#include "rtklib.h"

int (*showmsgimpl_)(char *format,...);
void (*setspanimpl_)(gtime_t ts, gtime_t te);
void (*settimeimpl_) (gtime_t time);

void registerShowMsgImpl(int (*showmsgimpl)(char *format,...))
{
    showmsgimpl_ = showmsgimpl;
}

void registerSetSpan(void (*setspanimpl) (gtime_t ts, gtime_t te))
{
    setspanimpl_ = setspanimpl;
}

void registerSetTime(void (*settimeimpl) (gtime_t time))
{
    settimeimpl_ = settimeimpl;
}

int showmsg(char *format,...)
{
    va_list myargs;

    /* Initialise the va_list variable with the ... after fmt */
    va_start(myargs, format);

    /* Forward the '...' to vprintf */
     int ret = showmsgimpl_(format, myargs);

    /* Clean up the va_list */
    va_end(myargs);

    return ret;
   };

void settspan(gtime_t ts, gtime_t te)
{
    setspanimpl_(ts, te);
}

void settime(gtime_t time)
{
    settimeimpl_(time);
}
