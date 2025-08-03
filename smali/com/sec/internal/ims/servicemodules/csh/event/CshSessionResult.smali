.class public Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;
.super Ljava/lang/Object;
.source "CshSessionResult.java"


# instance fields
.field public mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public mSessionNumber:I


# direct methods
.method public constructor <init>(ILcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;->mSessionNumber:I

    .line 20
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-void
.end method
