.class public Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;
.super Ljava/lang/Object;
.source "VshVideoDisplayParams.java"


# instance fields
.field public mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

.field public mSessionId:I

.field public mVideoDisplay:Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;

.field public mViewType:Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;


# direct methods
.method public constructor <init>(ILcom/sec/internal/ims/servicemodules/csh/event/VshViewType;Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;->mSessionId:I

    .line 23
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;->mViewType:Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    .line 24
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;->mVideoDisplay:Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;

    .line 25
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;->mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VshVideoDisplayParams #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;->mSessionId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
