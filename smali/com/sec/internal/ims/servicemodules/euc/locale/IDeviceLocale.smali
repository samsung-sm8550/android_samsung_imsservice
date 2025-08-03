.class public interface abstract Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale;
.super Ljava/lang/Object;
.source "IDeviceLocale.java"


# virtual methods
.method public abstract getDeviceLocale(Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$ICallback;)V
.end method

.method public abstract getLanguageCode(Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract start(Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$IDeviceLocaleListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
