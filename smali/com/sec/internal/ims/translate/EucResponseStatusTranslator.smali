.class public Lcom/sec/internal/ims/translate/EucResponseStatusTranslator;
.super Ljava/lang/Object;
.source "EucResponseStatusTranslator.java"

# interfaces
.implements Lcom/sec/internal/ims/translate/TypeTranslator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/internal/ims/translate/TypeTranslator<",
        "Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;",
        "Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EucResponseStatusTranslator"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;)Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;
    .locals 6

    .line 41
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;->id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 45
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;->handle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result p0

    .line 46
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;->status()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 53
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;->FAILURE_NETWORK:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    :goto_0
    move-object v5, v0

    goto :goto_1

    .line 59
    :cond_0
    new-instance p0, Lcom/sec/internal/helper/translate/TranslationException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/helper/translate/TranslationException;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 56
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;->FAILURE_INTERNAL:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    goto :goto_0

    .line 50
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;->SUCCESS:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    goto :goto_0

    .line 63
    :goto_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;->type()I

    move-result v0

    if-eqz v0, :cond_4

    if-ne v0, v2, :cond_3

    .line 69
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    :goto_2
    move-object v2, v0

    goto :goto_3

    .line 72
    :cond_3
    sget-object p0, Lcom/sec/internal/ims/translate/EucResponseStatusTranslator;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Unknown or unsupported type of the original EUCR message."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance p0, Lcom/sec/internal/helper/translate/TranslationException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/helper/translate/TranslationException;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 66
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    goto :goto_2

    .line 76
    :goto_3
    invoke-static {p0}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    new-instance p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;

    .line 79
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;->remoteUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;)V

    return-object p0

    .line 43
    :cond_5
    new-instance p0, Lcom/sec/internal/helper/translate/TranslationException;

    const-string p1, "ID of EUC related to response is null!"

    invoke-direct {p0, p1}, Lcom/sec/internal/helper/translate/TranslationException;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public bridge synthetic translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/translate/EucResponseStatusTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;)Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;

    move-result-object p0

    return-object p0
.end method
