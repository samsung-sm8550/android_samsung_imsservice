.class public Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;
.super Ljava/lang/Object;
.source "VshSessionEstablishedEvent.java"


# instance fields
.field public mResolution:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

.field public mSessionId:I


# direct methods
.method public constructor <init>(ILcom/sec/internal/ims/servicemodules/csh/event/VshResolution;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;->mSessionId:I

    .line 10
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;->mResolution:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VshSessionEstablishedEvent [mSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;->mResolution:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
