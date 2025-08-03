.class public Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"


# static fields
.field public static final NOT_RCS:I = 0x1

.field public static final NO_INFO:I = 0x8

.field public static final RCS_ACTIVE:I = 0x2

.field public static final REGISTRATION_STATUS_OFFLINE:I = 0x2

.field public static final REGISTRATION_STATUS_ONLINE:I = 0x1

.field public static final REGISTRATION_STATUS_UNKNOWN:I


# instance fields
.field private capabilities:Lcom/gsma/services/rcs/capability/Capabilities;

.field private contact:Lcom/gsma/services/rcs/contact/ContactId;

.field private displayName:Ljava/lang/String;

.field private mBlockingState:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

.field private mBlockingTs:J

.field private presenceInfo:Lcom/sec/ims/presence/PresenceInfo;

.field private rcsStatus:I

.field private rcsStatusTimestamp:J

.field private registrationState:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->capabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    .line 144
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->presenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    .line 149
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->contact:Lcom/gsma/services/rcs/contact/ContactId;

    const/4 v1, 0x0

    .line 154
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->registrationState:I

    const/4 v1, 0x1

    .line 159
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->rcsStatus:I

    const-wide/16 v1, 0x0

    .line 164
    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->rcsStatusTimestamp:J

    .line 169
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->displayName:Ljava/lang/String;

    .line 174
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->NOT_BLOCKED:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->mBlockingState:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    return-void
.end method


# virtual methods
.method public getBlockingState()Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->mBlockingState:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    return-object p0
.end method

.method public getBlockingTimestamp()J
    .locals 2

    .line 363
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->mBlockingTs:J

    return-wide v0
.end method

.method public getCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->capabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    return-object p0
.end method

.method public getContact()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->contact:Lcom/gsma/services/rcs/contact/ContactId;

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    .line 336
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public getRcsStatus()I
    .locals 0

    .line 272
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->rcsStatus:I

    return p0
.end method

.method public getRegistrationState()I
    .locals 0

    .line 290
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->registrationState:I

    return p0
.end method

.method public setBlockingState(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->mBlockingState:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    return-void
.end method

.method public setBlockingTimestamp(J)V
    .locals 0

    .line 372
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->mBlockingTs:J

    return-void
.end method

.method public setCapabilities(Lcom/gsma/services/rcs/capability/Capabilities;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->capabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    return-void
.end method

.method public setContact(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->contact:Lcom/gsma/services/rcs/contact/ContactId;

    return-void
.end method

.method public setPresenceInfo(Lcom/sec/ims/presence/PresenceInfo;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->presenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    return-void
.end method

.method public setRcsDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setRcsStatus(I)V
    .locals 0

    .line 263
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->rcsStatus:I

    return-void
.end method

.method public setRcsStatusTimestamp(J)V
    .locals 0

    .line 299
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->rcsStatusTimestamp:J

    return-void
.end method

.method public setRegistrationState(I)V
    .locals 0

    .line 281
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->registrationState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Contact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->contact:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->rcsStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->registrationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->rcsStatusTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->capabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    if-eqz v1, :cond_0

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Capabilities="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->capabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/capability/Capabilities;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->presenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    if-eqz v1, :cond_1

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Presence="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->presenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p0}, Lcom/sec/ims/presence/PresenceInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
