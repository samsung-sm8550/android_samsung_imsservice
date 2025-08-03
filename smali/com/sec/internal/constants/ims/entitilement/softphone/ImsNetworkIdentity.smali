.class public Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;
.super Ljava/lang/Object;
.source "ImsNetworkIdentity.java"


# instance fields
.field private mAddressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppId:Ljava/lang/String;

.field private mImpi:Ljava/lang/String;

.field private mImpu:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mImpi:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mImpu:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mAddressList:Ljava/util/List;

    .line 12
    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mImpi:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mImpu:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mImpi:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mImpu:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mAddressList:Ljava/util/List;

    .line 21
    iput-object p4, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mAppId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mImpi:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mImpu:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mAddressList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 49
    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public getAddressList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mAddressList:Ljava/util/List;

    return-object p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method public getImpi()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mImpi:Ljava/lang/String;

    return-object p0
.end method

.method public getImpu()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mImpu:Ljava/lang/String;

    return-object p0
.end method

.method public impiEmpty()Z
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mImpi:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[impi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mImpi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " impu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mImpu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mAddressList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " app-id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
