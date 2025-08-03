.class Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;
.super Ljava/lang/Object;
.source "RegistrationGovernorVzw.java"


# instance fields
.field private mCallType:I

.field private mError:Lcom/sec/ims/util/SipError;

.field private mEvent:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallType(Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->mCallType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmError(Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;)Lcom/sec/ims/util/SipError;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->mError:Lcom/sec/ims/util/SipError;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEvent(Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->mEvent:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 1441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1442
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_UNKNOWN:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->mEvent:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1452
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_UNKNOWN:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->mEvent:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1456
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->mEvent:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_UNKNOWN:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setCallSnapshot(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V
    .locals 0

    .line 1446
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->mEvent:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    .line 1447
    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->mError:Lcom/sec/ims/util/SipError;

    .line 1448
    iput p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->mCallType:I

    return-void
.end method
