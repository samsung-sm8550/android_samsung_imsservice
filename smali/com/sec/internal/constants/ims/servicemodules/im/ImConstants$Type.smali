.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
.super Ljava/lang/Enum;
.source "ImConstants.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum MULTIMEDIA_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum SYSTEM_LEADER_CHANGED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum SYSTEM_LEADER_INFORMED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum SYSTEM_USER_JOINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum SYSTEM_USER_KICKOUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum SYSTEM_USER_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .locals 11

    .line 203
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_KICKOUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_JOINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_LEADER_CHANGED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_LEADER_INFORMED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    filled-new-array/range {v0 .. v10}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 207
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const-string v1, "MULTIMEDIA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 212
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const-string v1, "TEXT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 217
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const-string v1, "LOCATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 222
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const-string v1, "SYSTEM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 227
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const-string v1, "SYSTEM_USER_LEFT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 232
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const/4 v1, 0x5

    const/16 v2, 0xe

    const-string v3, "SYSTEM_USER_KICKOUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_KICKOUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 242
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const-string v1, "SYSTEM_USER_JOINED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_JOINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 247
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const-string v1, "SYSTEM_LEADER_CHANGED"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_LEADER_CHANGED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 252
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const-string v1, "MULTIMEDIA_PUBLICACCOUNT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 257
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const/16 v1, 0x9

    const/16 v2, 0xc

    const-string v3, "TEXT_PUBLICACCOUNT"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 263
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const/16 v1, 0xa

    const/16 v2, 0xd

    const-string v3, "SYSTEM_LEADER_INFORMED"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_LEADER_INFORMED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 203
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->$values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 265
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 268
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 269
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->id:I

    return-void
.end method

.method public static fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .locals 1

    .line 273
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .locals 1

    .line 203
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .locals 1

    .line 203
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .locals 0

    .line 283
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object p0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 203
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object p0

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 278
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->id:I

    return p0
.end method
