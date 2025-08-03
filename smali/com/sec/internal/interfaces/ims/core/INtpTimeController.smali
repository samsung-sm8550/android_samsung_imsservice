.class public interface abstract Lcom/sec/internal/interfaces/ims/core/INtpTimeController;
.super Ljava/lang/Object;
.source "INtpTimeController.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# virtual methods
.method public abstract refreshNtpTime()V
.end method

.method public abstract registerNtpTimeChangedListener(Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;)V
.end method

.method public abstract unregisterNtpTimeChangedListener(Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;)V
.end method
