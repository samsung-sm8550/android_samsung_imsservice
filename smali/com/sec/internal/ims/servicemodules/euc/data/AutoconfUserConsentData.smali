.class public Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;
.super Ljava/lang/Object;
.source "AutoconfUserConsentData.java"


# instance fields
.field private final mConsentMsgMessage:Ljava/lang/String;

.field private final mConsentMsgTitle:Ljava/lang/String;

.field private final mOwnIdentity:Ljava/lang/String;

.field private final mTimestamp:J

.field private final mUserAccept:Z


# direct methods
.method public constructor <init>(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->mTimestamp:J

    .line 26
    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->mUserAccept:Z

    .line 27
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->mConsentMsgTitle:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->mConsentMsgMessage:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->mOwnIdentity:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConsentMsgMessage()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->mConsentMsgMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getConsentMsgTitle()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->mConsentMsgTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getOwnIdentity()Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->mOwnIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->mTimestamp:J

    return-wide v0
.end method

.method public isUserAccept()Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->mUserAccept:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAccept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->mUserAccept:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mConsentMsgTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->mConsentMsgTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mConsentMsgSubject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->mConsentMsgMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOwnIdentity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->mOwnIdentity:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
