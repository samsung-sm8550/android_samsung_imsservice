.class public Lcom/voltecrypt/service/SxRequestPeerProfileEntity;
.super Ljava/lang/Object;
.source "SxRequestPeerProfileEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/voltecrypt/service/SxRequestPeerProfileEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callId:Ljava/lang/String;

.field private callPhoneNum:Ljava/lang/String;

.field private calledPhoneNum:Ljava/lang/String;

.field private requestMark:Ljava/lang/String;

.field private time:J

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity$1;

    invoke-direct {v0}, Lcom/voltecrypt/service/SxRequestPeerProfileEntity$1;-><init>()V

    sput-object v0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->time:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->time:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->callPhoneNum:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->calledPhoneNum:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->type:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->callId:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->requestMark:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->time:J

    .line 29
    iput-object p1, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->callPhoneNum:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->calledPhoneNum:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->type:I

    .line 32
    iput-object p4, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->callId:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->requestMark:Ljava/lang/String;

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

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 146
    :cond_1
    check-cast p1, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;

    .line 147
    iget-wide v2, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->time:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->callPhoneNum:Ljava/lang/String;

    iget-object v3, p1, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->callPhoneNum:Ljava/lang/String;

    .line 148
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->calledPhoneNum:Ljava/lang/String;

    iget-object v3, p1, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->calledPhoneNum:Ljava/lang/String;

    .line 149
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->type:I

    .line 150
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->callId:Ljava/lang/String;

    iget-object v3, p1, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->callId:Ljava/lang/String;

    .line 151
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->requestMark:Ljava/lang/String;

    iget-object p1, p1, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->requestMark:Ljava/lang/String;

    .line 152
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

    .line 77
    iget-object p0, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->requestMark:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 8

    .line 157
    iget-wide v0, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->time:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->callPhoneNum:Ljava/lang/String;

    iget-object v4, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->calledPhoneNum:Ljava/lang/String;

    iget v0, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->callId:Ljava/lang/String;

    iget-object v7, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->requestMark:Ljava/lang/String;

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SxRequestPeerProfileEntity{time=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", callPhoneNum=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->callPhoneNum:Ljava/lang/String;

    .line 164
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", calledPhoneNum=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->calledPhoneNum:Ljava/lang/String;

    .line 165
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", callId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->callId:Ljava/lang/String;

    .line 167
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", requestMark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->requestMark:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 134
    iget-wide v0, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget-object p2, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->callPhoneNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object p2, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->calledPhoneNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget p2, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object p2, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->callId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object p0, p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->requestMark:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
