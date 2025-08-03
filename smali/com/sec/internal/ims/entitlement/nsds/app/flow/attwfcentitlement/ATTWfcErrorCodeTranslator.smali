.class public Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;
.super Ljava/lang/Object;
.source "ATTWfcErrorCodeTranslator.java"


# static fields
.field private static final ENTITLEMENT_CHECK_MAX_RETRY:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ATTWfcErrorCodeTranslator"

.field private static final sMapE911FilteredFailureCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMapE911FilteredSuccessCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->sMapE911FilteredSuccessCodes:Ljava/util/Map;

    const/4 v1, 0x7

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xa

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x9

    .line 22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x8

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x9c5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0xc

    .line 24
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x2

    .line 25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x9c6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x3

    .line 26
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x8ff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->sMapE911FilteredFailureCodes:Ljava/util/Map;

    const/16 v7, 0x8fd

    .line 32
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static filterSuccessCodeWithE911Validity(Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;ILjava/lang/String;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->isE911InfoAvailForNativeLine(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 73
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->sMapE911FilteredSuccessCodes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    const/16 p0, 0x3e8

    .line 75
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 78
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->sMapE911FilteredFailureCodes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    const/16 p0, 0x8ff

    .line 80
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 83
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static translateErrorCode(Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;IZIILjava/lang/String;)I
    .locals 3

    .line 42
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "translateErrorCode: deviceEventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "nsdsErrorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "retryCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    if-eq p3, v0, :cond_2

    const/16 p0, 0x416

    const/16 p5, 0x8fd

    if-eq p3, p0, :cond_0

    const/16 p0, 0x9c4

    if-eq p3, p0, :cond_3

    const/16 p0, 0x8fc

    if-eq p3, p0, :cond_3

    if-eq p3, p5, :cond_3

    .line 63
    invoke-static {p1, p2, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->translateErrorCodeByEventType(IZI)I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    move p3, p5

    goto :goto_0

    :cond_1
    const/4 p3, -0x1

    goto :goto_0

    .line 48
    :cond_2
    invoke-static {p0, p1, p5}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->filterSuccessCodeWithE911Validity(Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;ILjava/lang/String;)I

    move-result p3

    :cond_3
    :goto_0
    return p3
.end method

.method private static translateErrorCodeByEventType(IZI)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 88
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "translateErrorCodeByEventType: result cannot be success"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    const/16 v1, 0x8fd

    if-eq p0, p1, :cond_2

    const/4 v2, 0x4

    if-eq p0, v2, :cond_4

    const/16 v2, 0x9

    if-eq p0, v2, :cond_2

    const/16 v2, 0xa

    if-eq p0, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne p2, p1, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v0, 0x8fc

    goto :goto_0

    :cond_4
    const/16 v0, 0x8ff

    :goto_0
    return v0
.end method
