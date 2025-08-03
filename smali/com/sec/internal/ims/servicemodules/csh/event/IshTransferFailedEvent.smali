.class public Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferFailedEvent;
.super Ljava/lang/Object;
.source "IshTransferFailedEvent.java"


# instance fields
.field public mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public mSessionId:I


# direct methods
.method public constructor <init>(ILcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferFailedEvent;->mSessionId:I

    .line 21
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferFailedEvent;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-void
.end method
