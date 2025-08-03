.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
.super Landroid/os/RemoteException;
.source "ServerApiException.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/RemoteException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method
