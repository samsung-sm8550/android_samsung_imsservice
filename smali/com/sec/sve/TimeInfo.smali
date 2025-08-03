.class public Lcom/sec/sve/TimeInfo;
.super Ljava/lang/Object;
.source "TimeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/sve/TimeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ntpTimestamp:J

.field private rtpTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/sec/sve/TimeInfo$1;

    invoke-direct {v0}, Lcom/sec/sve/TimeInfo$1;-><init>()V

    sput-object v0, Lcom/sec/sve/TimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/sec/sve/TimeInfo;->rtpTimestamp:J

    .line 12
    iput-wide v0, p0, Lcom/sec/sve/TimeInfo;->ntpTimestamp:J

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/sec/sve/TimeInfo;->rtpTimestamp:J

    .line 17
    iput-wide p3, p0, Lcom/sec/sve/TimeInfo;->ntpTimestamp:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0, p1}, Lcom/sec/sve/TimeInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/sve/TimeInfo-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/sve/TimeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/sve/TimeInfo;->rtpTimestamp:J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/sve/TimeInfo;->ntpTimestamp:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getNtpTimestamp()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/sec/sve/TimeInfo;->ntpTimestamp:J

    return-wide v0
.end method

.method public getRtpTimestamp()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/sec/sve/TimeInfo;->rtpTimestamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeInfo RTP ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/sve/TimeInfo;->rtpTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] NTP ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/sve/TimeInfo;->ntpTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    iget-wide v0, p0, Lcom/sec/sve/TimeInfo;->rtpTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    iget-wide v0, p0, Lcom/sec/sve/TimeInfo;->ntpTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
