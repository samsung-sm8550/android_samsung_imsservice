.class public Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
.super Ljava/lang/Object;
.source "SmsResponse.java"


# static fields
.field public static final CDMA_NETWORK_TYPE:I = 0x1

.field public static final ERROR_CAUSE_SPECIFIED:I = 0x4

.field public static final ERROR_IMS_FAILED:I = 0x9

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_PERMANENT:I = 0x3

.field public static final ERROR_TEMPORARY:I = 0x2

.field public static final ERROR_UNDEFINED:I = 0xff

.field public static final GSM_NETWORK_TYPE:I = 0x2

.field public static final RESULT_CANCELLED:I = 0x17

.field public static final RESULT_ENCODING_ERROR:I = 0x12

.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NONE:I = 0x0

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final RESULT_ERROR_SHORT_CODE_NEVER_ALLOWED:I = 0x8

.field public static final RESULT_ERROR_SHORT_CODE_NOT_ALLOWED:I = 0x7

.field public static final RESULT_INTERNAL_ERROR:I = 0x15

.field public static final RESULT_INVALID_ARGUMENTS:I = 0xb

.field public static final RESULT_INVALID_SMSC_ADDRESS:I = 0x13

.field public static final RESULT_INVALID_SMS_FORMAT:I = 0xe

.field public static final RESULT_INVALID_STATE:I = 0xc

.field public static final RESULT_MODEM_ERROR:I = 0x10

.field public static final RESULT_NETWORK_ERROR:I = 0x11

.field public static final RESULT_NETWORK_REJECT:I = 0xa

.field public static final RESULT_NO_MEMORY:I = 0xd

.field public static final RESULT_NO_RESOURCES:I = 0x16

.field public static final RESULT_OPERATION_NOT_ALLOWED:I = 0x14

.field public static final RESULT_RADIO_NOT_AVAILABLE:I = 0x9

.field public static final RESULT_REQUEST_NOT_SUPPORTED:I = 0x18

.field public static final RESULT_SYSTEM_ERROR:I = 0xf

.field public static final SIP_ACCEPTED:I = 0xca

.field public static final SIP_OK:I = 0xc8

.field public static final SMS_FALLBACK_FOR_IMS:I = 0x13

.field public static final STATUS_ACCEPTED:I = 0x0

.field public static final STATUS_BLOCKED_DESTINATION:I = 0x7

.field public static final STATUS_CANCELLED:I = 0x3

.field public static final STATUS_CANCEL_FAILED:I = 0x6

.field public static final STATUS_DELIVERED:I = 0x2

.field public static final STATUS_DEPOSITED_TO_INTERNET:I = 0x1

.field public static final STATUS_DUPLICATE_MESSAGE:I = 0x9

.field public static final STATUS_INVALID_DESTINATION:I = 0xa

.field public static final STATUS_MESSAGE_EXPIRED:I = 0xd

.field public static final STATUS_NETWORK_CONGESTION:I = 0x4

.field public static final STATUS_NETWORK_ERROR:I = 0x5

.field public static final STATUS_TEXT_TOO_LONG:I = 0x8

.field public static final STATUS_UNDEFINED:I = 0xff

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1f

.field public static final UNKNOWN_NETWORK_TYPE:I


# instance fields
.field private mContentType:I

.field private mErrorCause:I

.field private mErrorClass:I

.field private mMessageId:I

.field private mReasonCode:I

.field private mTpdu:[B


# direct methods
.method public constructor <init>(II[BI)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mMessageId:I

    .line 102
    iput p2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mReasonCode:I

    .line 103
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mTpdu:[B

    .line 104
    iput p4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mContentType:I

    .line 105
    invoke-direct {p0, p2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->convertSipResponsetoErrorCause(I)V

    return-void
.end method

.method private convertSipResponsetoErrorCause(I)V
    .locals 7

    const/16 v0, 0x190

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/16 v3, 0x1f

    const/4 v4, 0x3

    const/16 v5, 0x11

    if-lt p1, v0, :cond_2

    const/16 v0, 0x1f3

    if-gt p1, v0, :cond_2

    .line 153
    iput v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mErrorClass:I

    const/16 v0, 0x193

    if-eq p1, v0, :cond_1

    const/16 v0, 0x198

    if-eq p1, v0, :cond_0

    .line 166
    iput v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mErrorCause:I

    .line 167
    iput v5, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mReasonCode:I

    goto :goto_1

    :cond_0
    const/4 p1, 0x4

    .line 157
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mErrorCause:I

    .line 158
    iput v5, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mReasonCode:I

    goto :goto_1

    .line 161
    :cond_1
    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mErrorClass:I

    .line 162
    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mErrorCause:I

    .line 163
    iput v5, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mReasonCode:I

    goto :goto_1

    :cond_2
    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_4

    const/16 v6, 0x257

    if-gt p1, v6, :cond_4

    .line 171
    iput v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mErrorClass:I

    if-eq p1, v0, :cond_3

    .line 178
    iput v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mErrorCause:I

    .line 179
    iput v5, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mReasonCode:I

    goto :goto_1

    .line 174
    :cond_3
    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mErrorCause:I

    .line 175
    iput v5, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mReasonCode:I

    goto :goto_1

    .line 183
    :cond_4
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mContentType:I

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-ne v0, v1, :cond_7

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_6

    const/16 v0, 0xca

    if-ne p1, v0, :cond_5

    goto :goto_0

    .line 189
    :cond_5
    iput v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mErrorClass:I

    .line 190
    iput v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mErrorCause:I

    .line 191
    iput v5, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mReasonCode:I

    goto :goto_1

    .line 185
    :cond_6
    :goto_0
    iput v6, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mErrorClass:I

    .line 186
    iput v6, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mErrorCause:I

    .line 187
    iput v6, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mReasonCode:I

    goto :goto_1

    :cond_7
    if-ne v0, v2, :cond_9

    if-nez p1, :cond_8

    .line 195
    iput v6, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mErrorClass:I

    .line 196
    iput v6, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mErrorCause:I

    .line 197
    iput v6, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mReasonCode:I

    goto :goto_1

    :cond_8
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 199
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mErrorClass:I

    and-int/lit16 p1, p1, 0xff

    .line 200
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mErrorCause:I

    .line 201
    iput v5, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mReasonCode:I

    :cond_9
    :goto_1
    return-void
.end method


# virtual methods
.method public getContentType()I
    .locals 0

    .line 148
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mContentType:I

    return p0
.end method

.method public getErrorCause()I
    .locals 0

    .line 113
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mErrorCause:I

    return p0
.end method

.method public getErrorClass()I
    .locals 0

    .line 117
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mErrorClass:I

    return p0
.end method

.method public getMessageId()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mMessageId:I

    return p0
.end method

.method public getReasonCode()I
    .locals 0

    .line 144
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mReasonCode:I

    return p0
.end method

.method public getTpdu()[B
    .locals 1

    const/4 v0, 0x0

    .line 135
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mTpdu:[B

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 136
    new-array p0, p0, [B

    aput-byte v0, p0, v0

    :cond_0
    return-object p0
.end method

.method public setErrorCause(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mErrorCause:I

    return-void
.end method

.method public setErrorClass(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mErrorClass:I

    return-void
.end method

.method public setMessageRef(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->mMessageId:I

    return-void
.end method
