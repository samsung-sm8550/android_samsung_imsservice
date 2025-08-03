.class public Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;
.super Ljava/lang/Object;
.source "SystemRequestMessageTranslator.java"

# interfaces
.implements Lcom/sec/internal/ims/translate/TypeTranslator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/internal/ims/translate/TypeTranslator<",
        "Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;",
        "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEUCSystemRequestTypeTranslator:Lcom/sec/internal/helper/translate/MapTranslator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/translate/MapTranslator<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    const-string/jumbo v1, "urn:gsma:rcs:http-configuration:reconfigure"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;->RECONFIGURE:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v1, Lcom/sec/internal/helper/translate/MapTranslator;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/translate/MapTranslator;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;->mEUCSystemRequestTypeTranslator:Lcom/sec/internal/helper/translate/MapTranslator;

    return-void
.end method

.method private getData(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;
    .locals 1

    .line 118
    new-instance v0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$2;-><init>(Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)V

    return-object v0
.end method

.method private getDataAsOptional(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;
    .locals 1

    .line 109
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;->data()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;->getData(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/translate/TranslationException;
        }
    .end annotation

    .line 47
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;->getData(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;

    move-result-object v3

    .line 51
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;->getDataAsOptional(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;

    move-result-object v8

    .line 52
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->remoteUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    .line 54
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->handle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v6

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;->mEUCSystemRequestTypeTranslator:Lcom/sec/internal/helper/translate/MapTranslator;

    .line 57
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;->type()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/translate/MapTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    .line 59
    new-instance v0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;-><init>(Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;)V

    return-object v0
.end method

.method public bridge synthetic translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;

    move-result-object p0

    return-object p0
.end method
