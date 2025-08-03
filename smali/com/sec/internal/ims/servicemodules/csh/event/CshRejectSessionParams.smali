.class public Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;
.super Ljava/lang/Object;
.source "CshRejectSessionParams.java"


# instance fields
.field public mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

.field public mSessionId:I


# direct methods
.method public constructor <init>(ILcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;->mSessionId:I

    .line 23
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;->mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    return-void
.end method
