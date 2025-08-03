.class public Lcom/sec/internal/ims/translate/ResipTranslatorCollection;
.super Ljava/lang/Object;
.source "ResipTranslatorCollection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ResipTranslatorCollection"

.field private static final mAcceptContentTranslator:Lcom/sec/internal/helper/translate/MapTranslator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/translate/MapTranslator<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/sec/internal/helper/translate/MapTranslator;

    new-instance v1, Lcom/sec/internal/ims/translate/ResipTranslatorCollection$1;

    invoke-direct {v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/sec/internal/helper/translate/MapTranslator;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->mAcceptContentTranslator:Lcom/sec/internal/helper/translate/MapTranslator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustMessageBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 526
    const-string v1, "ResipTranslatorCollection"

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_4

    .line 532
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 533
    const-string v2, "charset="

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 534
    array-length v2, p1

    if-le v2, v3, :cond_1

    .line 535
    aget-object p1, p1, v3

    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustMessageBody(): charset = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 540
    :cond_1
    const-string p1, "UTF-8"

    .line 542
    :goto_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v2, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 544
    :try_start_1
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result p0

    .line 543
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 547
    const-string/jumbo p1, "replace_specialcharacter"

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    :catch_0
    move-object v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    const/16 p0, 0xa4

    const/16 p1, 0x20ac

    .line 550
    invoke-virtual {v2, p0, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 553
    :catch_1
    :goto_2
    const-string p0, "adjustMessageBody(): unsupported charset!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    :cond_3
    :goto_3
    return-object v2

    .line 527
    :cond_4
    :goto_4
    const-string p0, "adjustMessageBody(): invalid data, skip the message!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getWarningCode(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)I
    .locals 2

    if-eqz p0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->code()I

    move-result v0

    const/16 v1, 0x18f

    if-ne v0, v1, :cond_1

    .line 411
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->text()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 413
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 415
    :try_start_0
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 417
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static getWarningText(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->text()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 427
    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static translateAcceptContent(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "translateAcceptContent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipTranslatorCollection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v0, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->mAcceptContentTranslator:Lcom/sec/internal/helper/translate/MapTranslator;

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/translate/MapTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    return-object p0
.end method

.method public static translateFtError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .locals 3

    if-nez p0, :cond_0

    .line 369
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;->errorType()I

    move-result v0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "translateFtError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipTranslatorCollection"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 374
    instance-of p0, p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtSessionReleaseError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p0

    return-object p0

    .line 376
    :cond_2
    invoke-static {p0, p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p0

    return-object p0
.end method

.method public static translateFtProgressState(I)Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 445
    const-string p0, "ResipTranslatorCollection"

    const-string/jumbo v0, "translateFtProgressState(): unsupported state! Use TRANSFERRING instead!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->TRANSFERRING:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    return-object p0

    .line 443
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    return-object p0

    .line 441
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    return-object p0

    .line 439
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->INTERRUPTED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    return-object p0

    .line 437
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->TRANSFERRING:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    return-object p0
.end method

.method public static translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .locals 1

    .line 362
    invoke-static {p0, p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    .line 363
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateResult(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p0

    return-object p0
.end method

.method public static translateFtSessionReleaseError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .locals 2

    if-eqz p0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->code()J

    move-result-wide v0

    long-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 384
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "translateFtSessionReleaseError: cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipTranslatorCollection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_4

    const/16 v0, 0x198

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1e0

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1f7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x25b

    if-eq p0, v0, :cond_4

    .line 396
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 394
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 392
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 390
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 388
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0
.end method

.method public static translateFwImExtensionHeaders(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 561
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 562
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;->sipExtensions()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 563
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;->sipExtensions()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;

    move-result-object p0

    const/4 v1, 0x0

    .line 564
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->pairLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 565
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->pair(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->pair(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;->key()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImExtension Header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->pair(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;->key()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->pair(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 566
    const-string v3, "ResipTranslatorCollection"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->pair(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->pair(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;->value()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static translateFwImdnNoti(Ljava/util/Set;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;)[I"
        }
    .end annotation

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "translateFwImdnNoti(): notifications = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipTranslatorCollection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, -0x1

    .line 489
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 491
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 492
    sget-object v4, Lcom/sec/internal/ims/translate/ResipTranslatorCollection$2;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 506
    aput v5, v0, v2

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    .line 503
    aput v4, v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v2, 0x1

    .line 500
    aput v5, v0, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v2, 0x1

    .line 497
    aput v4, v0, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v2, 0x1

    .line 494
    aput v1, v0, v2

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public static translateImConferenceUserElemState(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;
    .locals 1

    if-nez p0, :cond_0

    .line 648
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;->FULL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    return-object p0

    .line 650
    :cond_0
    const-string/jumbo v0, "partial"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "deleted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 656
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;->FULL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    return-object p0

    .line 652
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    return-object p0

    .line 654
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;->PARTIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    return-object p0
.end method

.method public static translateImError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .locals 3

    if-nez p0, :cond_0

    .line 153
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;->errorType()I

    move-result v0

    .line 156
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;->errorCode()I

    move-result p0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "translateImError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipTranslatorCollection"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 182
    :pswitch_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 180
    :pswitch_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 162
    :pswitch_2
    invoke-static {p0, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateSIPError(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p0

    return-object p0

    .line 178
    :pswitch_3
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 176
    :pswitch_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_RSRC_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 174
    :pswitch_5
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 172
    :pswitch_6
    instance-of p0, p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    if-eqz p0, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    .line 171
    :cond_1
    invoke-static {v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImSessionReleaseError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p0

    return-object p0

    .line 169
    :pswitch_7
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 167
    :pswitch_8
    invoke-static {p0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateMSRPError(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p0

    return-object p0

    .line 165
    :pswitch_9
    instance-of v0, p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    if-eqz v0, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    .line 164
    :cond_2
    invoke-static {p0, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateSIPError(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p0

    return-object p0

    .line 160
    :pswitch_a
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .locals 1

    .line 145
    invoke-static {p0, p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    .line 146
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateResult(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p0

    return-object p0
.end method

.method public static translateImSessionReleaseError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .locals 3

    if-eqz p0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->code()J

    move-result-wide v0

    long-to-int v0, v0

    .line 334
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->text()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 332
    const-string p0, ""

    .line 336
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "translateImSessionReleaseError: cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", causeText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipTranslatorCollection"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    const/16 p0, 0x198

    if-eq v0, p0, :cond_3

    const/16 p0, 0x19a

    if-eq v0, p0, :cond_2

    const/16 p0, 0x1e0

    if-eq v0, p0, :cond_1

    .line 356
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 342
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE_BEARER_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 340
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE_GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 344
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 346
    :cond_4
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "check_byecause"

    .line 347
    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 348
    const-string v0, "Booted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 349
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CONFERENCE_PARTY_BOOTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 350
    :cond_5
    const-string v0, "Call Completed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 351
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CONFERENCE_CALL_COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 354
    :cond_6
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0
.end method

.method public static translateMSRPError(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .locals 2

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "translateMSRPError(): ErrorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipTranslatorCollection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x190

    if-eq p0, v0, :cond_9

    const/16 v0, 0x193

    if-eq p0, v0, :cond_8

    const/16 v0, 0x198

    if-eq p0, v0, :cond_7

    const/16 v0, 0x19d

    if-eq p0, v0, :cond_6

    const/16 v0, 0x19f

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1a7

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1e1

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1f5

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1f7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1fa

    if-eq p0, v0, :cond_0

    .line 325
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 323
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 321
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->OUTOFSERVICE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 319
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_METHOD:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 317
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 315
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_PARAMETERS_OUT_OF_BOUND:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 313
    :cond_5
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_CONTENT_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 311
    :cond_6
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 309
    :cond_7
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_TRANSACTION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 307
    :cond_8
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 305
    :cond_9
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_REQUEST_UNINTELLIGIBLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0
.end method

.method public static translateResult(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .locals 7

    .line 73
    invoke-static {p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateResultType(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 80
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_PROVISIONAL:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    if-eq v2, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->MSRP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    if-ne v2, v1, :cond_2

    .line 83
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;->errorCode()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    move-result-object p1

    move-object v4, p1

    move-object v3, v0

    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;->errorCode()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    move-result-object p1

    move-object v3, p1

    move-object v4, v0

    goto :goto_1

    :cond_2
    move-object v3, v0

    move-object v4, v3

    :goto_1
    if-eqz p2, :cond_4

    .line 87
    instance-of p1, p2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    if-eqz p1, :cond_3

    .line 88
    check-cast p2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    .line 89
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    .line 90
    invoke-static {p2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->getWarningCode(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->text()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;-><init>(ILjava/lang/String;)V

    move-object v5, p1

    move-object v6, v0

    goto :goto_2

    .line 91
    :cond_3
    instance-of p1, p2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    if-eqz p1, :cond_4

    .line 92
    check-cast p2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    .line 93
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    .line 94
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->code()J

    move-result-wide v5

    long-to-int v1, v5

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->text()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;-><init>(ILjava/lang/String;)V

    move-object v6, p1

    move-object v5, v0

    goto :goto_2

    :cond_4
    move-object v5, v0

    move-object v6, v5

    .line 97
    :goto_2
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;)V

    return-object p1
.end method

.method private static translateResultType(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .locals 1

    .line 101
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    if-eqz p0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;->errorType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 133
    :pswitch_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    goto :goto_0

    .line 109
    :pswitch_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_PROVISIONAL:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    goto :goto_0

    .line 130
    :pswitch_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    goto :goto_0

    .line 127
    :pswitch_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SESSION_RSRC_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    goto :goto_0

    .line 124
    :pswitch_5
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    goto :goto_0

    .line 121
    :pswitch_6
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SESSION_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    goto :goto_0

    .line 118
    :pswitch_7
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    goto :goto_0

    .line 115
    :pswitch_8
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->MSRP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    goto :goto_0

    .line 112
    :pswitch_9
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    goto :goto_0

    .line 106
    :pswitch_a
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    :cond_0
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static translateSIPError(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .locals 3

    .line 188
    invoke-static {p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->getWarningCode(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)I

    move-result v0

    .line 189
    invoke-static {p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->getWarningText(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)Ljava/lang/String;

    move-result-object p1

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "translateSIPError(): ErrorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", WarningCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipTranslatorCollection"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xb4

    if-eq p0, v1, :cond_15

    const/16 v1, 0xb5

    if-eq p0, v1, :cond_14

    const/16 v1, 0x1a4

    if-eq p0, v1, :cond_13

    const/16 v1, 0x1a5

    if-eq p0, v1, :cond_12

    const/16 v1, 0x1ed

    if-eq p0, v1, :cond_11

    const/16 v1, 0x1ee

    if-eq p0, v1, :cond_10

    const/16 v1, 0x25b

    if-eq p0, v1, :cond_f

    const/16 v1, 0x25c

    if-eq p0, v1, :cond_e

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    const/16 v1, 0x7b

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    .line 297
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SIP_UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 288
    :pswitch_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SIP_VERSION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 287
    :pswitch_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVER_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 286
    :pswitch_2
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 285
    :pswitch_3
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BAD_GATEWAY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 284
    :pswitch_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NOT_IMPLEMENTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 283
    :pswitch_5
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->INTERNAL_SERVER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 279
    :pswitch_6
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NOT_ACCEPTABLE_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 278
    :pswitch_7
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CONNECTION_RELEASED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    :pswitch_8
    const/16 p0, 0x66

    if-eq v0, p0, :cond_0

    .line 275
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 273
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->EXCEED_MAXIMUM_RECIPIENTS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 269
    :pswitch_9
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->AMBIGUOUS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 268
    :pswitch_a
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ADDRESS_INCOMPLETE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 267
    :pswitch_b
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TOO_MANY_HOPS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 266
    :pswitch_c
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->LOOP_DETECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    :pswitch_d
    if-eq v0, v1, :cond_1

    .line 263
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 261
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 257
    :pswitch_e
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 253
    :pswitch_f
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNSUPPORTED_URI_SCHEME:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 252
    :pswitch_10
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNSUPPORTED_MEDIA_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 251
    :pswitch_11
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REQUEST_URI_TOO_LARGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 250
    :pswitch_12
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REQUEST_ENTITY_TOO_LARGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 247
    :pswitch_13
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NOT_ACCEPTABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 246
    :pswitch_14
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->METHOD_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    :pswitch_15
    if-eq v0, v1, :cond_2

    .line 243
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 241
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    :pswitch_16
    const/16 p0, 0x69

    if-eq v0, p0, :cond_d

    const/16 p0, 0x77

    if-eq v0, p0, :cond_c

    const/16 p0, 0x7f

    if-eq v0, p0, :cond_b

    const/16 p0, 0x81

    if-eq v0, p0, :cond_a

    const/16 p0, 0x17d

    if-eq v0, p0, :cond_9

    const/16 p0, 0x1e8

    if-eq v0, p0, :cond_7

    const/16 p0, 0x7a

    if-eq v0, p0, :cond_6

    if-eq v0, v1, :cond_5

    const/16 p0, 0x84

    if-eq v0, p0, :cond_4

    const/16 p0, 0x85

    if-eq v0, p0, :cond_3

    packed-switch v0, :pswitch_data_5

    .line 235
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 226
    :pswitch_17
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SPAM_SENDER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 224
    :pswitch_18
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_CHATBOT_DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 222
    :pswitch_19
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_TOKEN_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 214
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SIZE_EXCEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 212
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_VERSION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 208
    :cond_5
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 216
    :cond_6
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_RESTART_GC_CLOSED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 230
    :cond_7
    const-string p0, "Chatbot Conversation Needed"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 231
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_CHATBOT_CONVERSATION_NEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 232
    :cond_8
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 228
    :cond_9
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_MAX_GROUP_NUMBER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 220
    :cond_a
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_DESTINATIONS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 210
    :cond_b
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 218
    :cond_c
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_ANONYMITY_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 206
    :cond_d
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 199
    :pswitch_1a
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MOVED_TEMPORARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 198
    :pswitch_1b
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MOVED_PERMANENTLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 197
    :pswitch_1c
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MULTIPLE_CHOICES:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 295
    :sswitch_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 294
    :sswitch_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NO_DNS_RESULTS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 293
    :sswitch_2
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVER_NOT_ACCEPTABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 290
    :sswitch_3
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BUSY_EVERYWHERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 289
    :sswitch_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MESSAGE_TOO_LARGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 280
    :sswitch_5
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REQUEST_PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 256
    :sswitch_6
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->INTERVAL_TOO_BRIEF:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 249
    :sswitch_7
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 248
    :sswitch_8
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 202
    :sswitch_9
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 201
    :sswitch_a
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ALTERNATE_SERVICE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 200
    :sswitch_b
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->USE_PROXY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 196
    :sswitch_c
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_PROGRESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 193
    :sswitch_d
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRYING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 292
    :cond_e
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NOTEXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 291
    :cond_f
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 282
    :cond_10
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SECURITY_AGREEMENT_REQD:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 281
    :cond_11
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNDECEIPHERABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 255
    :cond_12
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->EXTENSION_REQUIRED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 254
    :cond_13
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BAD_EXTENSION:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 195
    :cond_14
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CALL_IS_BEING_FORWARDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    .line 194
    :cond_15
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->RINGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_d
        0xb7 -> :sswitch_c
        0x131 -> :sswitch_b
        0x17c -> :sswitch_a
        0x190 -> :sswitch_9
        0x198 -> :sswitch_8
        0x19a -> :sswitch_7
        0x1a7 -> :sswitch_6
        0x1eb -> :sswitch_5
        0x201 -> :sswitch_4
        0x258 -> :sswitch_3
        0x25e -> :sswitch_2
        0x2bf -> :sswitch_1
        0x2c5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x193
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x19d
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1e0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1f4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xcc
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch
.end method

.method public static translateStackImExtensionHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/Map;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 578
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 582
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 583
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 584
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 585
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 586
    invoke-static {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 587
    invoke-static {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    add-int/lit8 v2, v1, 0x1

    .line 588
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    aput v3, v0, v1

    move v1, v2

    goto :goto_0

    .line 591
    :cond_0
    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->createPairVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p1

    .line 593
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->startExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 594
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->addPair(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 595
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->endExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 598
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;->startImExtension(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 599
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;->addSipExtensions(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 600
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;->endImExtension(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static translateStackImdnNoti(Ljava/util/List;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "translateStackImdnNoti(): notifications = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipTranslatorCollection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 457
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "translateStackImdnNoti(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 470
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_MMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 467
    :cond_2
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_SMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    :cond_3
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 461
    :cond_4
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static translateToImConferenceDisconnectionReason(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;
    .locals 2

    .line 631
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "departed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "busy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "failed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "booted"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 635
    :pswitch_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->DEPARTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    return-object p0

    .line 637
    :pswitch_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->BUSY:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    return-object p0

    .line 639
    :pswitch_2
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    return-object p0

    .line 633
    :pswitch_3
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->BOOTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x5274acef -> :sswitch_3
        -0x4c696bc3 -> :sswitch_2
        0x2e51f9 -> :sswitch_1
        0x37762793 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static translateToImConferenceParticipantStatus(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;
    .locals 2

    .line 605
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "alerting"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "disconnecting"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "muted-via-focus"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "connected"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "pending"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "dialing-out"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "on-hold"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "disconnected"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_8
    const-string v1, "dialing-in"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 625
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0

    .line 611
    :pswitch_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->ALERTING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0

    .line 617
    :pswitch_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DISCONNECTING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0

    .line 619
    :pswitch_2
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->MUTED_VIA_FOCUS:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0

    .line 607
    :pswitch_3
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->CONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0

    .line 623
    :pswitch_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0

    .line 615
    :pswitch_5
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DIALING_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0

    .line 621
    :pswitch_6
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->ON_HOLD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0

    .line 609
    :pswitch_7
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DISCONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0

    .line 613
    :pswitch_8
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DIALING_IN:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c60cda0 -> :sswitch_8
        -0x525651c5 -> :sswitch_7
        -0x51cc2413 -> :sswitch_6
        -0x2fb8ce8d -> :sswitch_5
        -0x28af7669 -> :sswitch_4
        -0x22860cf7 -> :sswitch_3
        0x43bb877 -> :sswitch_2
        0x78c29c6 -> :sswitch_1
        0x60494106 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
