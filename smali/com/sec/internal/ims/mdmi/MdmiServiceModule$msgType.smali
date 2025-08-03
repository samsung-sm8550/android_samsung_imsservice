.class public final enum Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;
.super Ljava/lang/Enum;
.source "MdmiServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

.field public static final enum E911_CALL:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

.field public static final enum E911_REGI:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

.field public static final enum E922_CALL:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

.field public static final enum SIP_BYE:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

.field public static final enum SIP_CANCEL:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

.field public static final enum SIP_INVITE:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

.field public static final enum SIP_INVITE_200OK:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;
    .locals 7

    .line 27
    sget-object v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;->E911_CALL:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    sget-object v1, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;->E922_CALL:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    sget-object v2, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;->SIP_INVITE:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    sget-object v3, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;->SIP_INVITE_200OK:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    sget-object v4, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;->SIP_CANCEL:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    sget-object v5, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;->SIP_BYE:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    sget-object v6, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;->E911_REGI:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    filled-new-array/range {v0 .. v6}, [Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    const-string v1, "E911_CALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;->E911_CALL:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    .line 29
    new-instance v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    const-string v1, "E922_CALL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;->E922_CALL:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    .line 30
    new-instance v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    const-string v1, "SIP_INVITE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;->SIP_INVITE:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    .line 31
    new-instance v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    const-string v1, "SIP_INVITE_200OK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;->SIP_INVITE_200OK:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    .line 32
    new-instance v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    const-string v1, "SIP_CANCEL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;->SIP_CANCEL:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    .line 33
    new-instance v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    const-string v1, "SIP_BYE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;->SIP_BYE:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    .line 34
    new-instance v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    const-string v1, "E911_REGI"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;->E911_REGI:Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    .line 27
    invoke-static {}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;->$values()[Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;->$VALUES:[Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;
    .locals 1

    .line 27
    const-class v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;
    .locals 1

    .line 27
    sget-object v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;->$VALUES:[Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;

    return-object v0
.end method
