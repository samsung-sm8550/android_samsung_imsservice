.class public Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;
.super Ljava/lang/Object;
.source "BotServiceIdTranslator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BotServiceIdTranslator"


# instance fields
.field private mBotServiceIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mBotServiceIdMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;
    .locals 1

    .line 33
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator$SingletoneHolder;->INSTANCE:Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    return-object v0
.end method

.method private getOrCreateBotServiceIdMap(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 57
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mBotServiceIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2

    .line 62
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mBotServiceIdMap:Ljava/util/Map;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mBotServiceIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->mBotServiceIdMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contains: serviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BotServiceIdTranslator"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 51
    invoke-direct {p0, p2}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->getOrCreateBotServiceIdMap(I)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "register: msisdn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BotServiceIdTranslator"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    invoke-direct {p0, p3}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->getOrCreateBotServiceIdMap(I)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public translate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 44
    invoke-direct {p0, p2}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->getOrCreateBotServiceIdMap(I)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "translate: msisdn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", serviceId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BotServiceIdTranslator"

    invoke-static {v0, p2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method
