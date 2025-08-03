.class public Lcom/voltecrypt/service/SxRequestAuthenticationEntity;
.super Ljava/lang/Object;
.source "SxRequestAuthenticationEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/voltecrypt/service/SxRequestAuthenticationEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appKey:Ljava/lang/String;

.field private appPackageName:Ljava/lang/String;

.field private organizationCode:Ljava/lang/String;

.field private requestMark:Ljava/lang/String;

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity$1;

    invoke-direct {v0}, Lcom/voltecrypt/service/SxRequestAuthenticationEntity$1;-><init>()V

    sput-object v0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->time:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->time:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->organizationCode:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->appPackageName:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->appKey:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->requestMark:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->time:J

    .line 26
    iput-object p1, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->organizationCode:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->appPackageName:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->appKey:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->requestMark:Ljava/lang/String;

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

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    check-cast p1, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;

    .line 133
    iget-wide v2, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->time:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->organizationCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->organizationCode:Ljava/lang/String;

    .line 134
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->appPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->appPackageName:Ljava/lang/String;

    .line 135
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->appKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->appKey:Ljava/lang/String;

    .line 136
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->requestMark:Ljava/lang/String;

    iget-object p1, p1, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->requestMark:Ljava/lang/String;

    .line 137
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

.method public hashCode()I
    .locals 4

    .line 142
    iget-wide v0, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->time:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->organizationCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->appPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->appKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->requestMark:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SxRequestAuthenticationEntity{time=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", organizationCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->organizationCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->appPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->appKey:Ljava/lang/String;

    .line 151
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", requestMark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->requestMark:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    iget-object p2, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->organizationCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object p2, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->appKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object p0, p0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;->requestMark:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
