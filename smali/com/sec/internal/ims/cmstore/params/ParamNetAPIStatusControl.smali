.class public Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;
.super Ljava/lang/Object;
.source "ParamNetAPIStatusControl.java"


# instance fields
.field public final mIsDefaultMsgAppNative:Z

.field public final mIsMsgAppForeground:Z

.field public final mIsNetworkValid:Z

.field public final mIsOMANetAPIRunning:Z

.field public final mIsProvisionSuccess:Z

.field public final mIsServicePaused:Z

.field public final mIsUserDeleteAccount:Z


# direct methods
.method public constructor <init>(ZZZZZZZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsMsgAppForeground:Z

    .line 17
    iput-boolean p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    .line 18
    iput-boolean p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsOMANetAPIRunning:Z

    .line 19
    iput-boolean p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsDefaultMsgAppNative:Z

    .line 20
    iput-boolean p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsUserDeleteAccount:Z

    .line 21
    iput-boolean p6, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsProvisionSuccess:Z

    .line 22
    iput-boolean p7, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsServicePaused:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParamNetAPIStatusControl [mIsMsgAppForeground= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsMsgAppForeground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsNetworkValid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsOMANetAPIRunning = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsOMANetAPIRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mIsDefaultMsgAppNative = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsDefaultMsgAppNative:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mIsUserDeleteAccount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsUserDeleteAccount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsProvisionSuccess = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsProvisionSuccess:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
