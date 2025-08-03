.class public Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;
.super Ljava/lang/Object;
.source "CshAcceptSessionParams.java"


# instance fields
.field public mCallback:Landroid/os/Message;

.field public mSessionId:I


# direct methods
.method public constructor <init>(ILandroid/os/Message;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;->mSessionId:I

    .line 22
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;->mCallback:Landroid/os/Message;

    return-void
.end method
