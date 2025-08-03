.class public Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;
.super Ljava/lang/Object;
.source "CmcProfile.java"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private authServerUrl:Ljava/lang/String;

.field private cmcEmergencyNumbers:Ljava/lang/String;

.field private cmcRelayType:Ljava/lang/String;

.field private cmcType:I

.field private hotspotAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private supportDualSimCmc:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetaccessToken(Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetauthServerUrl(Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->authServerUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcmcEmergencyNumbers(Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->cmcEmergencyNumbers:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcmcRelayType(Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->cmcRelayType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcmcType(Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->cmcType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethotspotAddresses(Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->hotspotAddresses:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsupportDualSimCmc(Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->supportDualSimCmc:Z

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBuilder()Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;
    .locals 1

    .line 62
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/sec/internal/ims/core/handler/secims/CmcProfile;
    .locals 1

    .line 101
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/CmcProfile;-><init>(Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;)V

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthServerUrl(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->authServerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setCmcEmergencyNumbers(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->cmcEmergencyNumbers:Ljava/lang/String;

    return-object p0
.end method

.method public setCmcRelayType(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->cmcRelayType:Ljava/lang/String;

    return-object p0
.end method

.method public setCmcType(I)Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;
    .locals 0

    .line 71
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->cmcType:I

    return-object p0
.end method

.method public setHotspotAddresses(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->hotspotAddresses:Ljava/util/List;

    return-object p0
.end method

.method public setSupportDualSimCmc(Z)Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->supportDualSimCmc:Z

    return-object p0
.end method
