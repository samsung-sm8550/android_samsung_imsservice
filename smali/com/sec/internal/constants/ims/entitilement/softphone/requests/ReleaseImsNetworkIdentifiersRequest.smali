.class public Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ReleaseImsNetworkIdentifiersRequest;
.super Ljava/lang/Object;
.source "ReleaseImsNetworkIdentifiersRequest.java"


# instance fields
.field public mSubscriberCredentials:Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ReleaseImsNetworkIdentifiersRequest$SubscriberCredentials;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subscriberIdentitiessubscriberCredentials"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ReleaseImsNetworkIdentifiersRequest$SubscriberCredentials;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ReleaseImsNetworkIdentifiersRequest$SubscriberCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ReleaseImsNetworkIdentifiersRequest;->mSubscriberCredentials:Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ReleaseImsNetworkIdentifiersRequest$SubscriberCredentials;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReleaseImsNetworkIdentifiersRequest [mSubscriberCredentials = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ReleaseImsNetworkIdentifiersRequest;->mSubscriberCredentials:Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ReleaseImsNetworkIdentifiersRequest$SubscriberCredentials;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
