.class public Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferProgressEvent;
.super Ljava/lang/Object;
.source "IshTransferProgressEvent.java"


# instance fields
.field public mProgress:J

.field public mSessionId:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferProgressEvent;->mSessionId:I

    .line 10
    iput-wide p2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferProgressEvent;->mProgress:J

    return-void
.end method
