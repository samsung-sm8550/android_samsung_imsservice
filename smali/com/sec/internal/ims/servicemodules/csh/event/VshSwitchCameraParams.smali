.class public Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;
.super Ljava/lang/Object;
.source "VshSwitchCameraParams.java"


# instance fields
.field public mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;->mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    return-void
.end method
