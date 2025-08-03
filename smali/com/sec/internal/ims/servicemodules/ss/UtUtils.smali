.class public Lcom/sec/internal/ims/servicemodules/ss/UtUtils;
.super Ljava/lang/Object;
.source "UtUtils.java"


# static fields
.field public static final DOMAIN_NAME:Ljava/lang/String; = ".3gppnetwork.org"

.field private static final LOG_TAG:Ljava/lang/String; = "UtUtils"

.field private static final PATTERN_TEL_NUMBER:Ljava/util/regex/Pattern;

.field private static final PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;

.field public static final XCAP_DOMAIN_NAME:Ljava/lang/String; = ".pub.3gppnetwork.org"

.field public static final XMLNS_CP:Ljava/lang/String; = "urn:ietf:params:xml:ns:common-policy"

.field public static final XMLNS_SS:Ljava/lang/String; = "http://uri.etsi.org/ngn/params/xml/simservs/xcap"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string v0, "[+]?[#*\\-.()0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->PATTERN_TEL_NUMBER:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildDomain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 471
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 472
    const-string v0, "mncxxx.mccxxx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 476
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 477
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 478
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 482
    :cond_0
    const-string v0, "000"

    move-object p1, v0

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mncxxx"

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 483
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mcc"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mccxxx"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static cleanBarringNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 733
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 736
    :cond_0
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertCbTypeToBitMask(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 444
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "unexpected cbType"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    :cond_3
    :goto_0
    return v0
.end method

.method public static convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    .line 421
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    return-object p0

    .line 419
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    return-object p0

    .line 417
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    return-object p0
.end method

.method private static createXmlElement(Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 1

    .line 824
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->value:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static doConvertIpVersion(Ljava/lang/String;)I
    .locals 10

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 450
    sget-object v7, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doConvertIpVersion type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v8, "naptr"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v7, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v8, "srv"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v7, v1

    goto :goto_0

    :sswitch_2
    const-string v8, "ipv4v6"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v7, v2

    goto :goto_0

    :sswitch_3
    const-string v8, "ipv6pref"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v7, v3

    goto :goto_0

    :sswitch_4
    const-string v8, "ipv6only"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v7, v4

    goto :goto_0

    :sswitch_5
    const-string v8, "ipv4pref"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v7, v5

    goto :goto_0

    :sswitch_6
    const-string v8, "ipv4only"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move v7, v6

    :goto_0
    packed-switch v7, :pswitch_data_0

    return v6

    :pswitch_0
    return v3

    :pswitch_1
    return v2

    :pswitch_2
    return v0

    :pswitch_3
    return v4

    :pswitch_4
    return v1

    :pswitch_5
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x737decef -> :sswitch_6
        -0x737d6a78 -> :sswitch_5
        -0x7361bded -> :sswitch_4
        -0x73613b76 -> :sswitch_3
        -0x467268db -> :sswitch_2
        0x1bdf7 -> :sswitch_1
        0x63be45b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static doconvertCBType(ZI)I
    .locals 0

    .line 0
    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    if-eqz p0, :cond_0

    const/16 p0, 0x77

    goto :goto_0

    :cond_0
    const/16 p0, 0x76

    :goto_0
    return p0

    :pswitch_1
    if-eqz p0, :cond_1

    const/16 p0, 0x69

    goto :goto_1

    :cond_1
    const/16 p0, 0x68

    :goto_1
    return p0

    :pswitch_2
    if-eqz p0, :cond_2

    const/16 p0, 0x67

    goto :goto_2

    :cond_2
    const/16 p0, 0x66

    :goto_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static doconvertCbCondition(I)Ljava/lang/String;
    .locals 3

    .line 361
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertICBtype type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    .line 379
    const-string p0, ""

    return-object p0

    .line 376
    :cond_0
    const-string p0, "identity"

    return-object p0

    .line 374
    :cond_1
    const-string p0, "anonymous"

    return-object p0

    .line 372
    :cond_2
    const-string/jumbo p0, "roaming"

    return-object p0

    .line 368
    :cond_3
    const-string p0, "international-exHC"

    return-object p0

    .line 366
    :cond_4
    const-string p0, "international"

    return-object p0
.end method

.method public static doconvertCondition(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    .line 357
    const-string p0, ""

    return-object p0

    .line 352
    :cond_0
    const-string p0, "not-registered"

    return-object p0

    .line 350
    :cond_1
    const-string p0, "not-reachable"

    return-object p0

    .line 354
    :cond_2
    const-string p0, "no-answer"

    return-object p0

    .line 348
    :cond_3
    const-string p0, "busy"

    return-object p0
.end method

.method public static doconvertMediaTypeToSsClass(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/ss/MEDIA;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 404
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x10

    return p0

    .line 406
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 p0, 0xff

    return p0
.end method

.method public static generate3GPPDomain(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 637
    :cond_0
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 638
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 643
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 644
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 646
    const-string v3, "ims.mnc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%03d"

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, v4, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    const-string p0, ".mcc"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".3gppnetwork.org"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 650
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return-object v0

    .line 639
    :cond_2
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Invalid operator."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getAcceptEncoding(I)Ljava/lang/String;
    .locals 5

    .line 712
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 713
    sget-object v0, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SMARTFREN:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELE2_RUSSIA:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 714
    const-string p0, ""

    return-object p0

    .line 717
    :cond_0
    const-string p0, "*"

    return-object p0
.end method

.method public static getBSFDomain(I)Ljava/lang/String;
    .locals 6

    .line 566
    const-string v0, "bsf_ip"

    const-string v1, ""

    .line 567
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 573
    :cond_0
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 575
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 581
    :cond_1
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v2

    const-string v3, ".pub.3gppnetwork.org"

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    .line 583
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpi()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    .line 585
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "NULL IMPI received from SIM :: Returning DEFAULT BSFIP !!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    const/16 v1, 0x40

    .line 588
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_6

    .line 589
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 592
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 593
    const-string v1, ".3gppnetwork.org"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "bsf."

    if-eqz v2, :cond_5

    .line 597
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_4

    return-object v0

    .line 601
    :cond_4
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 608
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_6
    :goto_1
    return-object v0

    :cond_7
    if-eqz v1, :cond_9

    .line 611
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x5

    if-ge p0, v2, :cond_8

    goto :goto_2

    :cond_8
    const/4 p0, 0x3

    .line 615
    :try_start_0
    invoke-virtual {v1, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 616
    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    const-string v4, "bsf.mnc"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%03d"

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, v5, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    const-string p0, ".mcc"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 625
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_9
    :goto_2
    return-object v0

    .line 576
    :cond_a
    :goto_3
    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->buildDomain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 754
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 756
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNAFDomain(I)Ljava/lang/String;
    .locals 6

    .line 490
    const-string v0, "auth_proxy_ip"

    const-string v1, ""

    .line 491
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 498
    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 499
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 500
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v0

    .line 504
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 505
    invoke-static {v0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->buildDomain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 508
    :cond_2
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    .line 509
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpi()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    .line 514
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    const/16 v3, 0x40

    const/4 v4, 0x1

    if-ne v2, v0, :cond_4

    const-string v0, "enable_gba"

    invoke-static {p0, v0, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_4

    .line 515
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "naf."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 516
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xcapDomain :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 517
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const-string/jumbo v0, "xcap."

    if-ne v2, p0, :cond_5

    .line 518
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 519
    const-string v0, "mnc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6

    add-int/lit8 v1, v0, 0x6

    .line 522
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mnc000"

    .line 521
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 525
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 528
    :cond_6
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 529
    const-string v0, "3gppnetwork.org"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 530
    const-string/jumbo v1, "pub.3gppnetwork.org"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_7
    return-object p0

    :cond_8
    if-eqz v3, :cond_d

    .line 535
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x5

    if-ge p0, v1, :cond_9

    goto :goto_3

    :cond_9
    const/4 p0, 0x3

    .line 539
    :try_start_0
    invoke-virtual {v3, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 540
    invoke-virtual {v3, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 541
    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_a

    .line 542
    const-string p0, "000"

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    .line 543
    :cond_a
    sget-object v3, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_b

    .line 544
    const-string v1, "460"

    .line 545
    const-string p0, "011"

    goto :goto_1

    .line 546
    :cond_b
    sget-object v3, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_c

    .line 547
    const-string v1, "455"

    .line 548
    const-string p0, "007"

    .line 551
    :cond_c
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    const-string/jumbo v3, "xcap.ims.mnc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%03d"

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, v4, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const-string p0, ".mcc"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-string p0, ".pub.3gppnetwork.org"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 559
    :goto_2
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_d
    :goto_3
    return-object v0
.end method

.method public static getNumberFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 664
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 669
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 671
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->PATTERN_TEL_NUMBER:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p0

    .line 674
    :cond_1
    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 675
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_3

    move-object p0, v1

    .line 680
    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, p0

    :goto_1
    return-object v1
.end method

.method protected static getSetting(ILjava/lang/String;I)I
    .locals 0

    .line 816
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected static getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 820
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getSetting(ILjava/lang/String;Z)Z
    .locals 0

    .line 812
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected static getSetting(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 808
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isBsfDisableTls(I)Z
    .locals 2

    .line 741
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 745
    :cond_0
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 746
    sget-object v1, Lcom/sec/internal/constants/Mno;->AIS:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static isCallBarringType(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x66

    if-eq p0, v0, :cond_1

    const/16 v0, 0x67

    if-eq p0, v0, :cond_1

    const/16 v0, 0x68

    if-eq p0, v0, :cond_1

    const/16 v0, 0x69

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isPutRequest(I)Z
    .locals 0

    .line 764
    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static makeInternationalNumber(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 3

    .line 687
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 689
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Country Code. Country Code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 692
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 694
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 697
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static makeMultipleXml(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;ILcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 3

    const/16 v0, 0x69

    if-ne p1, v0, :cond_0

    .line 80
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->OCB:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->ICB:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    .line 81
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->createXmlElement(Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p1

    const-string v0, "active"

    const-string/jumbo v1, "true"

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 84
    const-string/jumbo v0, "ss"

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    const-string/jumbo v1, "xmlns:ss"

    const-string v2, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 87
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->RULE_SET:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->createXmlElement(Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    const-string v1, "cp"

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    const-string/jumbo v1, "xmlns:cp"

    const-string/jumbo v2, "urn:ietf:params:xml:ns:common-policy"

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 90
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 91
    check-cast v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    invoke-static {v1, p2, p3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;Lcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    return-object p1
.end method

.method public static makeMultipleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;Lcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 6

    .line 45
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->CF:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->createXmlElement(Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    const-string v1, "active"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 47
    const-string/jumbo v1, "ss"

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    const-string/jumbo v2, "xmlns:ss"

    const-string v3, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 50
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    if-lez v1, :cond_1

    sget-object v2, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    if-eq p1, v2, :cond_1

    .line 51
    invoke-static {v1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeNoReplyTimerXml(IZ)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 53
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->RULE_SET:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->createXmlElement(Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    const-string v2, "cp"

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    const-string/jumbo v2, "xmlns:cp"

    const-string/jumbo v3, "urn:ietf:params:xml:ns:common-policy"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 57
    sget-object v4, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    if-ne p1, v4, :cond_2

    iget-object v4, v3, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 58
    check-cast v3, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    invoke-static {v3, p2, p1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;I)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v3

    goto :goto_1

    .line 60
    :cond_2
    check-cast v3, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    invoke-static {v3, p2, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v3

    .line 62
    :goto_1
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    return-object v0
.end method

.method public static makeNoReplyTimerXml(IZ)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 2

    .line 71
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v1, "NoReplyTimer"

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(I)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 73
    const-string/jumbo p1, "ss"

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    :cond_0
    return-object p0
.end method

.method public static makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;Lcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 11

    .line 254
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->RULE:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->createXmlElement(Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    const-string v1, "cp"

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 255
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->CONDITION:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->createXmlElement(Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v2

    .line 257
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doconvertCbCondition(I)Ljava/lang/String;

    move-result-object v4

    .line 258
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/16 v6, 0xa

    const-string/jumbo v7, "ss"

    if-nez v5, :cond_4

    .line 259
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    if-ne v5, v6, :cond_1

    sget-object v5, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne p1, v5, :cond_1

    .line 260
    sget-object v4, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->IDENTITY:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->createXmlElement(Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v4

    .line 261
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->target:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 262
    sget-object v9, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->ONE:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    invoke-static {v9}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->createXmlElement(Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v9

    invoke-virtual {v9, v3, v8}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_2

    .line 266
    :cond_1
    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v3, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 267
    const-string v5, "identity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 268
    invoke-virtual {v3, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 270
    invoke-virtual {v3, v7}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 272
    :cond_3
    :goto_1
    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 276
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v4, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    if-eq v4, v6, :cond_6

    const/4 v5, 0x6

    if-eq v4, v5, :cond_6

    .line 277
    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 278
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 279
    invoke-static {v4, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->setMediaElement(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;Z)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 281
    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_3

    .line 287
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    if-nez v3, :cond_8

    .line 288
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->RULE_DEACTIVATED:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->createXmlElement(Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v3

    if-eqz p2, :cond_7

    .line 290
    invoke-virtual {v3, v7}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 292
    :cond_7
    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 295
    :cond_8
    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v4, "actions"

    invoke-direct {v3, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 296
    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v4, "allow"

    invoke-direct {v3, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_9

    .line 298
    invoke-virtual {v3, v7}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 300
    :cond_9
    const-string v4, "false"

    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 302
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 305
    sget-object v3, Lcom/sec/internal/constants/Mno;->VIVACOM_BULGARIA:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->BATELCO_BAHRAIN:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->WIND_GREECE:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->CLARO_DOMINICAN:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    filled-new-array {v3, v4, v5, v6, v8}, [Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 307
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->actions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;

    .line 308
    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->name:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 310
    array-length v4, v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-ne v4, v8, :cond_a

    .line 311
    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    aget-object v3, v3, v6

    iget-object v9, p1, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->value:Ljava/lang/String;

    invoke-direct {v4, v3, v9}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 312
    :cond_a
    array-length v4, v3

    if-ne v4, v5, :cond_f

    .line 313
    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    aget-object v9, v3, v8

    iget-object v10, p1, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->value:Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-direct {v4, v9, v10, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_5
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->attribute:Ljava/lang/String;

    if-eqz p1, :cond_d

    .line 320
    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 321
    array-length v3, p1

    if-ne v3, v5, :cond_c

    .line 322
    aget-object v3, p1, v8

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    aget-object v3, p1, v8

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 323
    :cond_b
    aget-object v3, p1, v6

    aget-object p1, p1, v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v3, p1}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_6

    .line 326
    :cond_c
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "This is out of specification. So throw away attributes."

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_6
    if-eqz p2, :cond_e

    .line 330
    iget-object p1, v4, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    if-nez p1, :cond_e

    iget-object p1, v4, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 331
    invoke-virtual {v4, v7}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 333
    :cond_e
    invoke-virtual {v1, v4}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_4

    .line 315
    :cond_f
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "This is out of specification. So never come here"

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 337
    :cond_10
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 338
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    return-object v0
.end method

.method public static makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-static {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;I)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p0

    return-object p0
.end method

.method public static makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;I)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 153
    sget-object v4, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->RULE:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->createXmlElement(Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v4

    const-string v5, "cp"

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v4

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    const-string v7, "id"

    invoke-virtual {v4, v7, v6}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v4

    .line 154
    sget-object v6, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->CONDITION:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->createXmlElement(Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v6

    .line 156
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doconvertCondition(I)Ljava/lang/String;

    move-result-object v7

    .line 157
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    const-string/jumbo v9, "ss"

    if-nez v8, :cond_1

    .line 158
    new-instance v8, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v8, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v8, v9}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 162
    :cond_0
    invoke-virtual {v6, v8}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 165
    :cond_1
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 166
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 167
    invoke-static {v8, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->setMediaElement(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;Z)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 169
    invoke-virtual {v6, v8}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_0

    .line 174
    :cond_3
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v7, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    if-nez v7, :cond_5

    .line 175
    sget-object v7, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->RULE_DEACTIVATED:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->createXmlElement(Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v7

    if-eqz v1, :cond_4

    .line 177
    invoke-virtual {v7, v9}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 179
    :cond_4
    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 182
    :cond_5
    invoke-virtual {v4, v6}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 183
    new-instance v7, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v8, "actions"

    invoke-direct {v7, v8}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    .line 185
    new-instance v7, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v8, "forward-to"

    invoke-direct {v7, v8}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 186
    new-instance v8, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v10, "target"

    invoke-direct {v8, v10}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_6

    .line 188
    invoke-virtual {v7, v9}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 189
    invoke-virtual {v8, v9}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 192
    :cond_6
    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x4

    if-nez v10, :cond_7

    .line 193
    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 194
    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_1

    .line 195
    :cond_7
    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v10, v10, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    if-nez v10, :cond_9

    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 196
    sget-object v10, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v10, :cond_8

    .line 197
    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v10, v10, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    if-ne v10, v11, :cond_9

    .line 198
    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_1

    .line 201
    :cond_8
    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 205
    :cond_9
    :goto_1
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    if-eqz v8, :cond_f

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_f

    const/4 v10, 0x0

    .line 206
    :goto_2
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v12, v12, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_f

    .line 208
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v12, v12, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;

    iget-object v12, v12, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->id:Ljava/lang/String;

    .line 209
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v13, v13, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;

    iget-object v13, v13, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->value:Ljava/lang/String;

    .line 210
    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v14, v14, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;

    iget-object v14, v14, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->attribute:Ljava/lang/String;

    .line 212
    const-string v15, ":"

    invoke-virtual {v12, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 213
    array-length v11, v15

    const/4 v8, 0x1

    if-ne v11, v8, :cond_a

    .line 214
    new-instance v11, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v11, v12, v13}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 215
    :cond_a
    array-length v11, v15

    const/4 v12, 0x2

    if-ne v11, v12, :cond_e

    .line 216
    new-instance v11, Lcom/sec/internal/constants/ims/XmlElement;

    aget-object v12, v15, v8

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-direct {v11, v12, v13, v15}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-eqz v14, :cond_c

    .line 222
    const-string v12, "="

    invoke-virtual {v14, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 223
    array-length v13, v12

    const/4 v14, 0x2

    if-ne v13, v14, :cond_c

    .line 224
    aget-object v13, v12, v8

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b

    aget-object v13, v12, v8

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    :cond_b
    const/4 v13, 0x0

    goto :goto_4

    :cond_c
    const/4 v13, 0x0

    goto :goto_5

    .line 225
    :goto_4
    aget-object v14, v12, v13

    aget-object v12, v12, v8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v8

    invoke-virtual {v12, v8, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v14, v8}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    :goto_5
    if-eqz v1, :cond_d

    .line 230
    iget-object v8, v11, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    if-nez v8, :cond_d

    iget-object v8, v11, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 231
    invoke-virtual {v11, v9}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 234
    :cond_d
    invoke-virtual {v7, v11}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_6

    :cond_e
    const/4 v13, 0x0

    .line 218
    sget-object v8, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v11, "This is out of specification. So never come here"

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x4

    goto/16 :goto_2

    .line 238
    :cond_f
    invoke-virtual {v5, v7}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    if-lez v3, :cond_10

    .line 241
    invoke-static {v3, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeNoReplyTimerXml(IZ)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 244
    :cond_10
    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 246
    sget-object v1, Lcom/sec/internal/constants/Mno;->SMARTONE:Lcom/sec/internal/constants/Mno;

    if-ne v2, v1, :cond_11

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    return-object v6

    :cond_11
    return-object v4
.end method

.method public static makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;IZ)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 4

    .line 111
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->createXmlElement(Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p0

    .line 112
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->DEFAULT_BEHAV:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->createXmlElement(Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 115
    const-string/jumbo p2, "ss"

    invoke-virtual {p0, p2}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    const-string/jumbo v2, "xmlns:ss"

    const-string v3, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 116
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    :cond_0
    if-nez p1, :cond_1

    .line 119
    const-string p2, "false"

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "true"

    :goto_0
    const-string v1, "active"

    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 120
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->CLI_RESTRICTED:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    :goto_1
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->value:Ljava/lang/String;

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->CLI_NOT_RESTRICTED:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    goto :goto_1

    :goto_2
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 121
    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    return-object p0
.end method

.method public static makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;ZZ)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 1

    .line 101
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->createXmlElement(Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string/jumbo p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    const-string v0, "active"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p0

    if-eqz p2, :cond_1

    .line 104
    const-string/jumbo p1, "ss"

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p1

    const-string/jumbo p2, "xmlns:ss"

    const-string v0, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    :cond_1
    return-object p0
.end method

.method public static makeXcapUserAgentHeader(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 768
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 772
    :cond_0
    const-string/jumbo v0, "ro.build.PDA"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 773
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 774
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BUILD_VERSION]"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    if-eqz v0, :cond_2

    .line 776
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_2

    .line 777
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[BUILD_VERSION_8_LETTER]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 779
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "[PRODUCT_MODEL]"

    if-eqz v1, :cond_3

    .line 780
    const-string/jumbo v0, "ro.product.base_model"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 782
    :cond_3
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 784
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v0

    const-string v1, "[PRODUCT_TYPE]"

    if-eqz v0, :cond_4

    .line 785
    const-string v0, "device-type/tablet"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 787
    :cond_4
    const-string v0, "device-type/smart-phone"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 790
    :goto_1
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 791
    const-string v1, "[OMCCODE]"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/OmcCode;->getUserAgentNWCode(ILcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 793
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 795
    const-string/jumbo v0, "sip_ua_vonr_service_type"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 796
    const-string v1, "VoNR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "PRD-NG114/6"

    goto :goto_2

    :cond_5
    const-string v0, "PRD-IR92/15"

    :goto_2
    const-string v1, "[IMS_PROFILE_VOICE]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 799
    :cond_6
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 800
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 801
    const-string v0, "[MCC_MNC]"

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_7
    return-object p0
.end method

.method public static removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 704
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    const-string v0, "0"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static setMediaElement(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;Z)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 2

    .line 131
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v1, "media"

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 133
    const-string/jumbo p1, "ss"

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 135
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtUtils$1;->$SwitchMap$com$sec$internal$ims$servicemodules$ss$MEDIA:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    const-string/jumbo p1, "video"

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_0

    .line 137
    :cond_2
    const-string p1, "audio"

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 145
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-eq p0, p1, :cond_3

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
