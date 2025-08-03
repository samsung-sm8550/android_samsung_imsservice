.class public Lcom/voltecrypt/service/SxRequestQMKeyEntity;
.super Ljava/lang/Object;
.source "SxRequestQMKeyEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/voltecrypt/service/SxRequestQMKeyEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callId:Ljava/lang/String;

.field private keyLen:I

.field private localPhoneNum:Ljava/lang/String;

.field private oppositePhoneNum:Ljava/lang/String;

.field private requestMark:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private time:J

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    new-instance v0, Lcom/voltecrypt/service/SxRequestQMKeyEntity$1;

    invoke-direct {v0}, Lcom/voltecrypt/service/SxRequestQMKeyEntity$1;-><init>()V

    sput-object v0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->time:J

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->time:J

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->localPhoneNum:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->oppositePhoneNum:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->keyLen:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->sessionId:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->type:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->callId:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->requestMark:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->time:J

    .line 33
    iput-object p1, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->localPhoneNum:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->oppositePhoneNum:Ljava/lang/String;

    .line 35
    iput p3, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->keyLen:I

    .line 36
    iput-object p4, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->sessionId:Ljava/lang/String;

    .line 37
    iput p5, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->type:I

    .line 38
    iput-object p6, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->callId:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->requestMark:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 173
    :cond_1
    check-cast p1, Lcom/voltecrypt/service/SxRequestQMKeyEntity;

    .line 174
    iget-wide v2, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->time:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->localPhoneNum:Ljava/lang/String;

    iget-object v3, p1, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->localPhoneNum:Ljava/lang/String;

    .line 175
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->oppositePhoneNum:Ljava/lang/String;

    iget-object v3, p1, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->oppositePhoneNum:Ljava/lang/String;

    .line 176
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->keyLen:I

    .line 177
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->keyLen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->sessionId:Ljava/lang/String;

    .line 178
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->type:I

    .line 179
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->callId:Ljava/lang/String;

    iget-object v3, p1, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->callId:Ljava/lang/String;

    .line 180
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->requestMark:Ljava/lang/String;

    iget-object p1, p1, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->requestMark:Ljava/lang/String;

    .line 181
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getRequestMark()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->requestMark:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 10

    .line 186
    iget-wide v0, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->time:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->localPhoneNum:Ljava/lang/String;

    iget-object v4, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->oppositePhoneNum:Ljava/lang/String;

    iget v0, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->keyLen:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->sessionId:Ljava/lang/String;

    iget v0, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->callId:Ljava/lang/String;

    iget-object v9, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->requestMark:Ljava/lang/String;

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SxRequestQMKeyEntity{time=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", localPhoneNum=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->localPhoneNum:Ljava/lang/String;

    .line 193
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", oppositePhoneNum=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->oppositePhoneNum:Ljava/lang/String;

    .line 194
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", keyLen=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->keyLen:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sessionId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->sessionId:Ljava/lang/String;

    .line 196
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", callId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->callId:Ljava/lang/String;

    .line 198
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", requestMark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->requestMark:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 159
    iget-wide v0, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 160
    iget-object p2, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->localPhoneNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object p2, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->oppositePhoneNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget p2, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->keyLen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object p2, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget p2, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object p2, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->callId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object p0, p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->requestMark:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
