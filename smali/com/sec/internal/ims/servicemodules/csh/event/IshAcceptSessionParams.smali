.class public Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;
.super Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;
.source "IshAcceptSessionParams.java"


# instance fields
.field public mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;-><init>(ILandroid/os/Message;)V

    .line 21
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;->mPath:Ljava/lang/String;

    return-void
.end method
