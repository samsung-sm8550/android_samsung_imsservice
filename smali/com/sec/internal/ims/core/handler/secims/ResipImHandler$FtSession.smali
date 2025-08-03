.class public final Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;
.super Ljava/lang/Object;
.source "ResipImHandler.java"


# instance fields
.field protected mAcceptCallback:Landroid/os/Message;

.field protected mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

.field protected mHandle:I

.field protected mId:I

.field protected mStartCallback:Landroid/os/Message;

.field protected mStartSessionHandleCallback:Landroid/os/Message;

.field protected mUaHandle:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 235
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mId:I

    return-void
.end method
