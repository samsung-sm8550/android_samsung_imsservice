.class public Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;
.super Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;
.source "ImsLoggerPlus.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    const-class p1, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->LOG_TAG:Ljava/lang/String;

    return-void
.end method
