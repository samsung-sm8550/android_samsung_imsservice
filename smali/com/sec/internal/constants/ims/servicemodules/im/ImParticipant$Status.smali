.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
.super Ljava/lang/Enum;
.source "ImParticipant.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field public static final enum ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field public static final enum DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field public static final enum FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field public static final enum GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field public static final enum INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field public static final enum INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field public static final enum PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field public static final enum TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field public static final enum TO_INVITE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .locals 9

    .line 146
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->TO_INVITE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    filled-new-array/range {v0 .. v8}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 150
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 155
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    const-string v1, "INVITED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 160
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    const-string v1, "ACCEPTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 165
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    const-string v1, "DECLINED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 170
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 175
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    const-string v1, "GONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 180
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    const-string v1, "TO_INVITE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->TO_INVITE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 185
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    const-string v1, "FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 190
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    const-string v1, "PENDING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 146
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->$values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 193
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 196
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->id:I

    return-void
.end method

.method public static fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .locals 1

    .line 210
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .locals 1

    .line 146
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .locals 1

    .line 146
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .locals 0

    .line 206
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    return-object p0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object p0

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 201
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->id:I

    return p0
.end method
