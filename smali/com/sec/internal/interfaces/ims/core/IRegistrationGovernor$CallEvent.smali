.class public final enum Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;
.super Ljava/lang/Enum;
.source "IRegistrationGovernor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

.field public static final enum EVENT_CALL_ALT_SERVICE_EMERGENCY:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

.field public static final enum EVENT_CALL_ALT_SERVICE_EMERGENCY_REGI:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

.field public static final enum EVENT_CALL_ALT_SERVICE_INITIAL_REGI:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

.field public static final enum EVENT_CALL_CMC_P2P_COMMAND:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

.field public static final enum EVENT_CALL_ESTABLISHED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

.field public static final enum EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

.field public static final enum EVENT_CALL_SILENT_REDIAL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

.field public static final enum EVENT_CALL_UNKNOWN:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;
    .locals 8

    .line 22
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_UNKNOWN:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    sget-object v1, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ESTABLISHED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    sget-object v2, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    sget-object v3, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ALT_SERVICE_INITIAL_REGI:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    sget-object v4, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ALT_SERVICE_EMERGENCY_REGI:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    sget-object v5, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ALT_SERVICE_EMERGENCY:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    sget-object v6, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_SILENT_REDIAL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    sget-object v7, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_CMC_P2P_COMMAND:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    filled-new-array/range {v0 .. v7}, [Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const-string v1, "EVENT_CALL_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_UNKNOWN:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    .line 24
    new-instance v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const-string v1, "EVENT_CALL_ESTABLISHED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ESTABLISHED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    .line 25
    new-instance v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const-string v1, "EVENT_CALL_LAST_CALL_END"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    .line 26
    new-instance v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const-string v1, "EVENT_CALL_ALT_SERVICE_INITIAL_REGI"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ALT_SERVICE_INITIAL_REGI:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    .line 27
    new-instance v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const-string v1, "EVENT_CALL_ALT_SERVICE_EMERGENCY_REGI"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ALT_SERVICE_EMERGENCY_REGI:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    .line 28
    new-instance v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const-string v1, "EVENT_CALL_ALT_SERVICE_EMERGENCY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ALT_SERVICE_EMERGENCY:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    .line 29
    new-instance v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const-string v1, "EVENT_CALL_SILENT_REDIAL_END"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_SILENT_REDIAL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    .line 30
    new-instance v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const-string v1, "EVENT_CALL_CMC_P2P_COMMAND"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_CMC_P2P_COMMAND:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    .line 22
    invoke-static {}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->$values()[Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->$VALUES:[Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;
    .locals 1

    .line 22
    const-class v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;
    .locals 1

    .line 22
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->$VALUES:[Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    invoke-virtual {v0}, [Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    return-object v0
.end method
