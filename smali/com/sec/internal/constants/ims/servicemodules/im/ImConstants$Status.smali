.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
.super Ljava/lang/Enum;
.source "ImConstants.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum BLOCKED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum CANCELLATION_UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum IRRELEVANT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum QUEUED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field public static final enum UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    .locals 11

    .line 66
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->BLOCKED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->QUEUED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->IRRELEVANT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION_UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    filled-new-array/range {v0 .. v10}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 70
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v1, "UNREAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 74
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v1, "READ"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 78
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v1, "SENDING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 82
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v1, "SENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 86
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v1, "FAILED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 90
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v1, "TO_SEND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 94
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v1, "BLOCKED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->BLOCKED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 98
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v1, "QUEUED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->QUEUED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 102
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const-string v1, "IRRELEVANT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->IRRELEVANT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 107
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const/16 v1, 0x9

    const/16 v2, 0xb

    const-string v3, "CANCELLATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 109
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    const/16 v1, 0xa

    const/16 v2, 0xc

    const-string v3, "CANCELLATION_UNREAD"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION_UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 66
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->$values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 111
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 115
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->id:I

    return-void
.end method

.method public static fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    .locals 1

    .line 119
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    .locals 1

    .line 66
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    .locals 1

    .line 66
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    .locals 0

    .line 129
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    return-object p0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object p0

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 124
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->id:I

    return p0
.end method
