.class public Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
.super Ljava/lang/Object;
.source "SmsEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final SMSIP_CST_NOTI_INFO:I = 0xc

.field public static final SMSIP_CST_RECEIVED:I = 0xb


# instance fields
.field private mCallID:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mData:[B

.field private mEventType:I

.field private mIsEmergency:Z

.field private mIsNTN:Z

.field private mLocalUri:Ljava/lang/String;

.field private mMessageID:I

.field private mPhoneId:I

.field private mReason:Ljava/lang/String;

.field private mReasonCode:I

.field private mRegistration:Lcom/sec/ims/ImsRegistration;

.field private mRetryAfter:I

.field private mRpRef:I

.field private mSentTime:J

.field private mSmscAddr:Ljava/lang/String;

.field private mState:I

.field private mTpDcs:I

.field private mTpMr:I

.field private mTpPid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 302
    new-instance v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent$1;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent$1;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 26
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    const/4 v1, -0x1

    .line 27
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    .line 28
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    .line 29
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    .line 30
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mLocalUri:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    const/4 v2, 0x0

    .line 36
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpPid:I

    .line 37
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpDcs:I

    .line 38
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    .line 40
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    .line 41
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    .line 43
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mPhoneId:I

    .line 45
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContent:Ljava/lang/String;

    .line 46
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mIsEmergency:Z

    const-wide/16 v3, 0x0

    .line 48
    iput-wide v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSentTime:J

    .line 49
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mIsNTN:Z

    .line 105
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 106
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 26
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    const/4 v1, -0x1

    .line 27
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    .line 28
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    .line 29
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    .line 30
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mLocalUri:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    const/4 v2, 0x0

    .line 36
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpPid:I

    .line 37
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpDcs:I

    .line 38
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    .line 40
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    .line 41
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    .line 43
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mPhoneId:I

    .line 45
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContent:Ljava/lang/String;

    .line 46
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mIsEmergency:Z

    const-wide/16 v3, 0x0

    .line 48
    iput-wide v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSentTime:J

    .line 49
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mIsNTN:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_0

    .line 85
    new-array v0, v1, [B

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 87
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    goto :goto_0

    .line 89
    :cond_0
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    .line 91
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    .line 99
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mIsEmergency:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSentTime:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mIsNTN:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/ImsRegistration;IIILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZ)V
    .locals 4

    move-object v0, p0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 33
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mLocalUri:Ljava/lang/String;

    const/4 v2, 0x0

    .line 36
    iput v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpPid:I

    .line 37
    iput v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpDcs:I

    .line 38
    iput v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    .line 40
    iput v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    const/4 v3, -0x1

    .line 41
    iput v3, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    .line 43
    iput v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mPhoneId:I

    .line 45
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContent:Ljava/lang/String;

    move-object v1, p1

    .line 67
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    move-object v1, p6

    .line 68
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    move v1, p2

    .line 69
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    move v1, p3

    .line 70
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    move v1, p4

    .line 71
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    move-object v1, p7

    .line 72
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    move-object v1, p8

    .line 73
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    move-object v1, p9

    .line 74
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    move v1, p10

    .line 75
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    move-object v1, p5

    .line 76
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    .line 77
    iput-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mIsEmergency:Z

    move-wide v1, p11

    .line 78
    iput-wide v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSentTime:J

    move/from16 v1, p13

    .line 79
    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mIsNTN:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getCallID()Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContent:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method public getData()[B
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    return-object p0
.end method

.method public getEventType()I
    .locals 0

    .line 126
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    return p0
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-object p0
.end method

.method public getLocalUri()Ljava/lang/String;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mLocalUri:Ljava/lang/String;

    return-object p0
.end method

.method public getMessageID()I
    .locals 0

    .line 130
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    return p0
.end method

.method public getPhoneId()I
    .locals 0

    .line 178
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mPhoneId:I

    return p0
.end method

.method public getReason()Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    return-object p0
.end method

.method public getReasonCode()I
    .locals 0

    .line 134
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    return p0
.end method

.method public getRetryAfter()I
    .locals 0

    .line 158
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    return p0
.end method

.method public getRpRef()I
    .locals 0

    .line 118
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    return p0
.end method

.method public getSentTime()J
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSentTime:J

    return-wide v0
.end method

.method public getSmscAddr()Ljava/lang/String;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    return-object p0
.end method

.method public getState()I
    .locals 0

    .line 114
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    return p0
.end method

.method public getTpDcs()I
    .locals 0

    .line 166
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpDcs:I

    return p0
.end method

.method public getTpMr()I
    .locals 0

    .line 170
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    return p0
.end method

.method public getTpPid()I
    .locals 0

    .line 162
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpPid:I

    return p0
.end method

.method public isEmergency()Z
    .locals 0

    .line 182
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mIsEmergency:Z

    return p0
.end method

.method public isNTN()Z
    .locals 0

    .line 190
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mIsNTN:Z

    return p0
.end method

.method public setCallID(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContent:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    return-void
.end method

.method public setData([B)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    return-void
.end method

.method public setEmergency(Z)V
    .locals 0

    .line 266
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mIsEmergency:Z

    return-void
.end method

.method public setEventType(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    return-void
.end method

.method public setImsRegistration(Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-void
.end method

.method public setLocalUri(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mLocalUri:Ljava/lang/String;

    return-void
.end method

.method public setMessageID(I)V
    .locals 0

    .line 214
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    return-void
.end method

.method public setNTN(Z)V
    .locals 0

    .line 274
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mIsNTN:Z

    return-void
.end method

.method public setPhoneId(I)V
    .locals 0

    .line 262
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mPhoneId:I

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    return-void
.end method

.method public setReasonCode(I)V
    .locals 0

    .line 218
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    return-void
.end method

.method public setRetryAfter(I)V
    .locals 0

    .line 242
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    return-void
.end method

.method public setRpRef(I)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    return-void
.end method

.method public setSentTime(J)V
    .locals 0

    .line 270
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSentTime:J

    return-void
.end method

.method public setSmscAddr(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    return-void
.end method

.method public setTpDcs(I)V
    .locals 0

    .line 250
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpDcs:I

    return-void
.end method

.method public setTpMr(I)V
    .locals 0

    .line 254
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    return-void
.end method

.method public setTpPid(I)V
    .locals 0

    .line 246
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpPid:I

    return-void
.end method

.method public toKeyDump()Ljava/lang/String;
    .locals 4

    .line 383
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    const/16 v1, 0x64

    const-string v2, ","

    const-string v3, ""

    if-lt v0, v1, :cond_0

    const/16 v1, 0x6a

    if-gt v0, v1, :cond_0

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 385
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    if-ltz v0, :cond_1

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 387
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    if-ltz v0, :cond_2

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 389
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    if-ltz v0, :cond_3

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 391
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    if-ltz v0, :cond_4

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 393
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 395
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 396
    const-string v1, "application/vnd.3gpp.sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "3gpp,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 399
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "3gpp2,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 401
    :cond_7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mIsNTN:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 318
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    const-string v1, ""

    packed-switch v0, :pswitch_data_0

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[NONE] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 338
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[INCOMING] state MT_RECEIVING_DELIVER_REPORT_ACK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 335
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[INCOMING] state MT_SENDING_DELIVER_REPORT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 329
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[INCOMING] state MT_RECEIVING_STATUS_REPORT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 332
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[INCOMING] state MT_RECEIVING_INCOMING_SMS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 326
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[OUTGOING] state MO_RECEIVING_202_ACCEPTED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 323
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[OUTGOING] state MO_RECEIVING_CALLID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 320
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[OUTGOING] state MO_SENDING_START "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    const-string v2, "] "

    if-eqz v1, :cond_0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "contentType ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    if-ltz v1, :cond_1

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "messageID ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    if-ltz v1, :cond_2

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "rpRef ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_2
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    if-ltz v1, :cond_4

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "reasonCode ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    const v3, 0x8000

    if-ge v0, v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit16 v0, v0, -0x8000

    .line 353
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "reason ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "callID ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 359
    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result v1

    const-string/jumbo v3, "smscAddr ["

    if-nez v1, :cond_7

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 363
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    const-string/jumbo v4, "sip:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    const-string/jumbo v4, "tel:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x3

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v1, 0x7

    .line 366
    :goto_3
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_a

    .line 367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 369
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v1, :cond_c

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "regId ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sentTime ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSentTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "isNTN ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mIsNTN:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 284
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    if-eqz p2, :cond_0

    .line 285
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 288
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    :goto_0
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSentTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 299
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mIsNTN:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
