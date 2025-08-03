.class public final enum Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;
.super Ljava/lang/Enum;
.source "DigestAuth.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

.field public static final enum AKAV1_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

.field public static final enum AKAV2_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

.field public static final enum MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

.field public static final enum MD5_SESSION:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

.field public static final enum UNKNOWN:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

.field public static final enum md5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;
    .locals 6

    .line 55
    sget-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->UNKNOWN:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    sget-object v1, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    sget-object v2, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->MD5_SESSION:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    sget-object v3, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->AKAV1_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    sget-object v4, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->AKAV2_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    sget-object v5, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->md5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    filled-new-array/range {v0 .. v5}, [Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->UNKNOWN:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    new-instance v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    const-string v1, "MD5"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    new-instance v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    const-string v1, "MD5_SESSION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->MD5_SESSION:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    new-instance v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    const-string v1, "AKAV1_MD5"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->AKAV1_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    new-instance v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    const-string v1, "AKAV2_MD5"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->AKAV2_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    new-instance v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    const-string v1, "md5"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->md5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    .line 55
    invoke-static {}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->$values()[Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->$VALUES:[Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getAlgoType(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;
    .locals 2

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object p0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->UNKNOWN:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object p0

    .line 64
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "AKAv2-MD5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "AKAv1-MD5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "md5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "MD5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "MD5-sess"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 76
    sget-object p0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->UNKNOWN:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object p0

    .line 74
    :pswitch_0
    sget-object p0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->AKAV2_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object p0

    .line 72
    :pswitch_1
    sget-object p0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->AKAV1_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object p0

    .line 68
    :pswitch_2
    sget-object p0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->md5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object p0

    .line 66
    :pswitch_3
    sget-object p0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object p0

    .line 70
    :pswitch_4
    sget-object p0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->MD5_SESSION:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x56fcf8df -> :sswitch_4
        0x1297e -> :sswitch_3
        0x1a57e -> :sswitch_2
        0x4ef15743 -> :sswitch_1
        0x4eff6ec4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;
    .locals 1

    .line 55
    const-class v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;
    .locals 1

    .line 55
    sget-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->$VALUES:[Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    invoke-virtual {v0}, [Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 82
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 94
    const-string p0, ""

    return-object p0

    .line 86
    :cond_0
    const-string p0, "md5"

    return-object p0

    .line 92
    :cond_1
    const-string p0, "AKAv2-MD5"

    return-object p0

    .line 90
    :cond_2
    const-string p0, "AKAv1-MD5"

    return-object p0

    .line 88
    :cond_3
    const-string p0, "MD5-sess"

    return-object p0

    .line 84
    :cond_4
    const-string p0, "MD5"

    return-object p0
.end method
