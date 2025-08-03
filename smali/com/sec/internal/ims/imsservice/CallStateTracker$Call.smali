.class Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;
.super Ljava/lang/Object;
.source "CallStateTracker.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/imsservice/ICall;


# instance fields
.field public final mIsCmcCall:Z

.field public final mIsCmcConnected:Z

.field public final mIsIncoming:Z

.field public final mNumber:Ljava/lang/String;

.field public final mState:I


# direct methods
.method constructor <init>(ILjava/lang/String;ZZZ)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p1, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;->mState:I

    .line 141
    iput-object p2, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;->mNumber:Ljava/lang/String;

    .line 142
    iput-boolean p3, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;->mIsIncoming:Z

    .line 143
    iput-boolean p4, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;->mIsCmcConnected:Z

    .line 144
    iput-boolean p5, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;->mIsCmcCall:Z

    return-void
.end method


# virtual methods
.method public getNumber()Ljava/lang/String;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method public isCmcCall()Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;->mIsCmcCall:Z

    return p0
.end method

.method public isCmcConnected()Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;->mIsCmcConnected:Z

    return p0
.end method

.method public isConnected()Z
    .locals 1

    .line 160
    iget p0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;->mState:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call{mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mIsIncoming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;->mIsIncoming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsCmcConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;->mIsCmcConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsCmcCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;->mIsCmcCall:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
