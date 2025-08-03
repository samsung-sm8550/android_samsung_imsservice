.class public Lcom/sec/internal/ims/core/handler/secims/CmcProfile;
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
.method public constructor <init>(Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->-$$Nest$fgetaccessToken(Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile;->accessToken:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->-$$Nest$fgetcmcType(Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile;->cmcType:I

    .line 45
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->-$$Nest$fgetauthServerUrl(Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile;->authServerUrl:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->-$$Nest$fgetcmcRelayType(Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile;->cmcRelayType:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->-$$Nest$fgetcmcEmergencyNumbers(Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile;->cmcEmergencyNumbers:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->-$$Nest$fgetsupportDualSimCmc(Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile;->supportDualSimCmc:Z

    .line 49
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->-$$Nest$fgethotspotAddresses(Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile;->hotspotAddresses:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthServerUrl()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile;->authServerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getCmcEmergencyNumbers()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile;->cmcEmergencyNumbers:Ljava/lang/String;

    return-object p0
.end method

.method public getCmcRelayType()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile;->cmcRelayType:Ljava/lang/String;

    return-object p0
.end method

.method public getCmcType()I
    .locals 0

    .line 19
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile;->cmcType:I

    return p0
.end method

.method public getHotspotAddresses()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile;->hotspotAddresses:Ljava/util/List;

    return-object p0
.end method

.method public getSupportDualSimCmc()Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile;->supportDualSimCmc:Z

    return p0
.end method
