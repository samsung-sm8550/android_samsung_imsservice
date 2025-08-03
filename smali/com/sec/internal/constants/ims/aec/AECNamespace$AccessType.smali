.class public final enum Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;
.super Ljava/lang/Enum;
.source "AECNamespace.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

.field public static final enum ALL:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

.field public static final enum LTE_4G:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

.field public static final enum NG_RAN_5G:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;


# instance fields
.field private index:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;
    .locals 3

    .line 69
    sget-object v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->ALL:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    sget-object v1, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->LTE_4G:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    sget-object v2, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->NG_RAN_5G:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 70
    new-instance v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    const-string v1, "0"

    const-string v2, "*"

    const-string v3, "ALL"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->ALL:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    new-instance v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    const-string v1, "1"

    const-string/jumbo v2, "volte/4g"

    const-string v3, "LTE_4G"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->LTE_4G:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    new-instance v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    const-string v1, "2"

    const-string/jumbo v2, "volte/5g"

    const-string v3, "NG_RAN_5G"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->NG_RAN_5G:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    .line 69
    invoke-static {}, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->$values()[Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->$VALUES:[Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput-object p3, p0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->index:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->name:Ljava/lang/String;

    return-void
.end method

.method public static getAccessType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;
    .locals 5

    .line 84
    invoke-static {}, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->values()[Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 85
    iget-object v4, v3, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->index:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->ALL:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;
    .locals 1

    .line 69
    const-class v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;
    .locals 1

    .line 69
    sget-object v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->$VALUES:[Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->name:Ljava/lang/String;

    return-object p0
.end method
