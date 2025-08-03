.class public Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# static fields
.field public static final CDMA_NETWORK_TYPE:I = 0x1

.field private static final CDMA_SMS_DIGIT_MODE_4_BIT:I = 0x0

.field private static final CDMA_SMS_DIGIT_MODE_8_BIT:I = 0x1

.field public static final DELIVER_MESSAGE_TYPE:I = 0x1

.field public static final DIGIT_MODE_4BIT_DTMF:I = 0x4

.field public static final DIGIT_MODE_8BIT_CHAR:I = 0x8

.field public static final ENCODING_7BIT_ASCII:I = 0x2

.field public static final ENCODING_GSM_7BIT_ALPHABET:I = 0x9

.field public static final ENCODING_GSM_DCS:I = 0xa

.field public static final ENCODING_IA5:I = 0x3

.field public static final ENCODING_IS91_EXTENDED_PROTOCOL:I = 0x1

.field public static final ENCODING_KOREAN:I = 0x6

.field public static final ENCODING_LATIN:I = 0x8

.field public static final ENCODING_LATIN_HEBREW:I = 0x7

.field public static final ENCODING_OCTET:I = 0x0

.field public static final ENCODING_SHIFT_JIS:I = 0x5

.field public static final ENCODING_UNICODE_16:I = 0x4

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_PERMANENT:I = 0x3

.field public static final ERROR_TEMPORARY:I = 0x2

.field private static final EXPECTED_PARAM_SIZE:I = 0x18

.field public static final FAIL_CAUSE_ENCODING_PROBLEM:I = 0x60

.field public static final FAIL_CAUSE_INVALID_TELESERVICE_ID:I = 0x4

.field public static final FAIL_CAUSE_OTHER_TERMINAL_PROBLEM:I = 0x27

.field public static final FAIL_CAUSE_RESOURCE_SHORTAGE:I = 0x23

.field public static final FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field public static final GSM_NETWORK_TYPE:I = 0x2

.field public static final IPC_ADDRESS:I = 0x3

.field public static final IPC_BEARER_DATA:I = 0x19

.field public static final IPC_BEARER_REPLY:I = 0x5

.field public static final IPC_SERVICE_CATEGORY:I = 0x2

.field public static final IPC_SMS_FORMAT_PP:I = 0x1

.field public static final IPC_SMS_FORMAT_SR:I = 0x2

.field public static final IPC_SUBADDRESS:I = 0x4

.field public static final IPC_TELESERVICE_ID:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field public static final MESSAGE_TYPE_CANCELLATION:I = 0x3

.field public static final MESSAGE_TYPE_DELIVER:I = 0x1

.field public static final MESSAGE_TYPE_DELIVERY_ACK:I = 0x4

.field public static final MESSAGE_TYPE_DELIVER_REPORT:I = 0x7

.field public static final MESSAGE_TYPE_READ_ACK:I = 0x6

.field public static final MESSAGE_TYPE_SUBMIT:I = 0x2

.field public static final MESSAGE_TYPE_SUBMIT_REPORT:I = 0x8

.field public static final MESSAGE_TYPE_USER_ACK:I = 0x5

.field public static final NUMBER_MODE_DATA_NETWORK:I = 0x1

.field public static final NUMBER_MODE_NOT_DATA_NETWORK:I = 0x0

.field public static final PARAM_ID_BEARER_DATA:I = 0x8

.field public static final PARAM_ID_BEARER_REPLY_OPTION:I = 0x6

.field public static final PARAM_ID_CAUSE_CODES:I = 0x7

.field public static final PARAM_ID_DESTINATION_ADDRESS:I = 0x4

.field public static final PARAM_ID_DESTINATION_SUB_ADDRESS:I = 0x5

.field public static final PARAM_ID_ORIGINATING_ADDRESS:I = 0x2

.field public static final PARAM_ID_ORIGINATING_SUB_ADDRESS:I = 0x3

.field public static final PARAM_ID_SERVICE_CATEGORY:I = 0x1

.field public static final PARAM_ID_TELESERVICE:I = 0x0

.field public static final PARAM_LENGTH_TELESERVICE:I = 0x2

.field public static final STATUS_REPORT_MESSAGE_TYPE:I = 0x2

.field private static final SUBPARAM_ALERT_ON_MESSAGE_DELIVERY:B = 0xct

.field private static final SUBPARAM_CALLBACK_NUMBER:B = 0xet

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_ABSOLUTE:B = 0x6t

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_RELATIVE:B = 0x7t

.field private static final SUBPARAM_ID_LAST_DEFINED:B = 0x17t

.field private static final SUBPARAM_LANGUAGE_INDICATOR:B = 0xdt

.field private static final SUBPARAM_MESSAGE_CENTER_TIME_STAMP:B = 0x3t

.field private static final SUBPARAM_MESSAGE_DEPOSIT_INDEX:B = 0x11t

.field private static final SUBPARAM_MESSAGE_DISPLAY_MODE:B = 0xft

.field private static final SUBPARAM_MESSAGE_IDENTIFIER:B = 0x0t

.field private static final SUBPARAM_MESSAGE_STATUS:B = 0x14t

.field private static final SUBPARAM_NUMBER_OF_MESSAGES:B = 0xbt

.field private static final SUBPARAM_PRIORITY_INDICATOR:B = 0x8t

.field private static final SUBPARAM_PRIVACY_INDICATOR:B = 0x9t

.field private static final SUBPARAM_REPLY_OPTION:B = 0xat

.field private static final SUBPARAM_SERVICE_CATEGORY_PROGRAM_DATA:B = 0x12t

.field private static final SUBPARAM_USER_DATA:B = 0x1t

.field private static final SUBPARAM_USER_RESPONSE_CODE:B = 0x2t

.field private static final SUBPARAM_VALIDITY_PERIOD_ABSOLUTE:B = 0x4t

.field private static final SUBPARAM_VALIDITY_PERIOD_RELATIVE:B = 0x5t


# instance fields
.field private mAddressByte:[B

.field private mBearerData:[B

.field private mBearerDataLength:I

.field private mBearerReplyOptionValue:I

.field private mCauseCode:I

.field private mContentType:I

.field private mCur:I

.field private mDestAddress:Ljava/lang/String;

.field private mDigitMode:I

.field private mErrorClass:I

.field private mMessageRef:I

.field private mMessageType:I

.field private mMsgId:I

.field private mMsgType:I

.field private mNetworktype:I

.field private mNoOfAddressDigit:I

.field private mNumberMode:I

.field private mNumberPlan:I

.field private mReplySeqNo:I

.field private mScAddress:Ljava/lang/String;

.field private mServiceCategory:I

.field private mStatusReportRequested:Z

.field private mTeleServiceid:I

.field private mTpdu:[B

.field private mUserDataHeader:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 194
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    .line 195
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgId:I

    const/4 v1, 0x0

    .line 196
    iput-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mScAddress:Ljava/lang/String;

    .line 197
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    return-void
.end method

.method public static convertDtmfToAscii(B)B
    .locals 1

    .line 0
    const/16 v0, 0x30

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x20

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x43

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x42

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x41

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x23

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x2a

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x39

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x38

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x37

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x36

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x35

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x34

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x33

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x32

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x31

    :goto_0
    :pswitch_e
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_e
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeMessageId(Lcom/android/internal/util/BitwiseInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 828
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 830
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    add-int/lit8 v1, v1, -0x18

    const/4 v2, 0x4

    .line 836
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    .line 837
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    shl-int/2addr v4, v0

    .line 838
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    or-int/2addr v0, v4

    .line 839
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    .line 841
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgId:I

    .line 842
    iput v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgType:I

    .line 843
    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mUserDataHeader:I

    if-lez v1, :cond_0

    .line 845
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MESSAGE_IDENTIFIER decode succeeded (extra bits = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SmsMessage"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    :cond_1
    return-void
.end method

.method private decodeReplyOption(Lcom/android/internal/util/BitwiseInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 854
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 855
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mStatusReportRequested:Z

    .line 856
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 857
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    const/4 p0, 0x4

    .line 858
    invoke-virtual {p1, p0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    return-void
.end method

.method private encodeCdmaAddress(I)[B
    .locals 4

    .line 688
    new-instance v0, Lcom/android/internal/util/BitwiseOutputStream;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    const/16 v1, 0x8

    .line 691
    :try_start_0
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 692
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getAddressParameterLength()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 693
    iget p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 694
    iget p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 696
    iget p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    if-ne p1, v2, :cond_0

    .line 697
    iget p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNetworktype:I

    const/4 v3, 0x3

    invoke-virtual {v0, v3, p1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    .line 700
    :cond_0
    :goto_0
    iget p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    const/4 v3, 0x4

    if-ne p1, v2, :cond_1

    iget p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    if-nez p1, :cond_1

    .line 701
    iget p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberPlan:I

    invoke-virtual {v0, v3, p1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 704
    :cond_1
    iget p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 706
    iget p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    if-nez p1, :cond_2

    move v1, v3

    :cond_2
    const/4 p1, 0x0

    .line 712
    :goto_1
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    if-ge p1, v2, :cond_4

    if-ne v1, v3, :cond_3

    .line 714
    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    aget-byte v2, v2, p1

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseToDtmf(B)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_2

    .line 716
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    aget-byte v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 719
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 721
    :goto_3
    const-string p1, "SmsMessage"

    const-string v0, "bitwise exception is thrown"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-virtual {p0}, Lcom/android/internal/util/BitwiseOutputStream$AccessException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getAddressParameterLength()I
    .locals 4

    .line 867
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    if-ne v0, v1, :cond_1

    .line 871
    iget v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x4

    :cond_1
    const/16 v3, 0x8

    add-int/2addr v2, v3

    if-nez v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    move v0, v3

    .line 883
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    array-length p0, p0

    mul-int/2addr v0, p0

    add-int/2addr v2, v0

    .line 885
    rem-int/lit8 p0, v2, 0x8

    if-nez p0, :cond_3

    .line 886
    div-int/2addr v2, v3

    goto :goto_2

    .line 888
    :cond_3
    div-int/2addr v2, v3

    add-int/2addr v2, v1

    :goto_2
    return v2
.end method

.method private getByte()I
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private getGsmAddress()Ljava/lang/String;
    .locals 8

    .line 558
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B

    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    aget-byte v1, v0, p0

    and-int/lit16 v2, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x2

    .line 559
    div-int/2addr v3, v4

    add-int/lit8 v5, v3, 0x2

    .line 562
    new-array v6, v5, [B

    const/4 v7, 0x0

    .line 563
    invoke-static {v0, p0, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x1

    .line 565
    aget-byte v0, v6, p0

    and-int/lit16 v0, v0, 0xff

    const/4 v5, 0x5

    if-ne v0, v5, :cond_0

    mul-int/lit8 v2, v2, 0x4

    .line 568
    div-int/lit8 v2, v2, 0x7

    .line 570
    invoke-static {v6, v4, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    add-int/2addr v3, p0

    .line 573
    aget-byte v0, v6, v3

    and-int/2addr v1, p0

    if-ne v1, p0, :cond_1

    or-int/lit16 v1, v0, 0xf0

    int-to-byte v1, v1

    .line 576
    aput-byte v1, v6, v3

    .line 579
    :cond_1
    invoke-static {v6, p0, v3, p0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object p0

    .line 582
    aput-byte v0, v6, v3

    :goto_0
    return-object p0
.end method

.method private getSCAddress()Ljava/lang/String;
    .locals 5

    .line 592
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getByte()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 598
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B

    iget v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    const/4 v4, 0x1

    .line 599
    invoke-static {v2, v3, v0, v4}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 601
    const-string v3, "SmsMessage"

    const-string v4, "invalid SC address: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    :goto_0
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    return-object v1
.end method

.method private parseCdmaAddress([B)V
    .locals 6

    .line 647
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v0, p1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    const/4 p1, 0x1

    .line 651
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    .line 652
    invoke-virtual {v0, p1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    .line 654
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-ne v1, p1, :cond_1

    const/4 v1, 0x3

    .line 661
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNetworktype:I

    .line 664
    :cond_1
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    if-ne v1, p1, :cond_2

    iget p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    if-nez p1, :cond_2

    .line 665
    invoke-virtual {v0, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberPlan:I

    .line 668
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    .line 669
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    const/4 p1, 0x0

    .line 671
    :goto_1
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    if-ge p1, v1, :cond_5

    .line 672
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    if-nez v1, :cond_3

    .line 673
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    const/16 v3, 0x30

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    .line 674
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    aget-byte v2, v1, p1

    const/16 v5, 0x3a

    if-ne v2, v5, :cond_4

    .line 675
    aput-byte v3, v1, p1

    goto :goto_2

    .line 678
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, p1
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 682
    :catch_0
    const-string p0, "SmsMessage"

    const-string p1, "bitwiseinputstream exception is thrown"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private static parseToDtmf(B)I
    .locals 2

    .line 0
    const/16 v0, 0x31

    const/16 v1, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    sub-int/2addr p0, v1

    goto :goto_0

    :cond_0
    if-ne p0, v1, :cond_1

    const/16 p0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_2

    const/16 p0, 0xb

    goto :goto_0

    :cond_2
    const/16 v0, 0x23

    if-ne p0, v0, :cond_3

    const/16 p0, 0xc

    :goto_0
    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public convertToFrameworkSmsFormat([B)[B
    .locals 2

    .line 267
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseCdmaDeliverPdu([B)V

    .line 268
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x12c

    invoke-direct {p1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 269
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 271
    :try_start_0
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMessageType:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 272
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTeleServiceid:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 273
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mServiceCategory:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 274
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 275
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 276
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNetworktype:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 277
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberPlan:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 278
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 279
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 280
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerReplyOptionValue:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 281
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mReplySeqNo:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 282
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mErrorClass:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 283
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCauseCode:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 284
    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerDataLength:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 285
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    invoke-virtual {v0, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 286
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 288
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 290
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsMessage"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 292
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p1

    .line 295
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object p0
.end method

.method public decodeBearerData([B)V
    .locals 12

    .line 748
    const-string v0, "BearerData decode failed: "

    const-string v1, "SmsMessage"

    :try_start_0
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v2, p1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    const/4 p1, 0x0

    move v3, p1

    move v4, v3

    .line 752
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_8

    const/16 v5, 0x8

    .line 753
    invoke-virtual {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 754
    invoke-virtual {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    shl-int v9, v6, v7

    .line 758
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "subparamId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int v10, v3, v9

    const/16 v11, 0x17

    if-eqz v10, :cond_2

    if-ltz v7, :cond_2

    if-le v7, v11, :cond_1

    goto :goto_1

    .line 762
    :cond_1
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage$CodingException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal duplicate subparameter ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage$CodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p0

    goto/16 :goto_7

    :cond_2
    :goto_1
    if-eqz v7, :cond_6

    if-eq v7, v6, :cond_4

    const/16 v6, 0xa

    if-eq v7, v6, :cond_3

    move v6, p1

    :goto_2
    if-ge v6, v8, :cond_7

    .line 796
    invoke-virtual {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 776
    :cond_3
    invoke-direct {p0, v2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->decodeReplyOption(Lcom/android/internal/util/BitwiseInputStream;)V

    goto :goto_5

    :cond_4
    move v4, p1

    :goto_3
    if-ge v4, v8, :cond_5

    .line 773
    invoke-virtual {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    move v4, v8

    goto :goto_5

    :cond_6
    move v6, p1

    :goto_4
    if-ge v6, v8, :cond_7

    .line 768
    invoke-virtual {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    if-ltz v7, :cond_0

    if-gt v7, v11, :cond_0

    or-int/2addr v3, v9

    goto/16 :goto_0

    :cond_8
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_9

    if-eqz v4, :cond_a

    .line 809
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mUserDataHeader:I

    if-ne p0, v6, :cond_a

    .line 810
    const-string p0, "UserData has header"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 807
    :cond_9
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage$CodingException;

    const-string p1, "missing MESSAGE_IDENTIFIER subparam"

    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage$CodingException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 813
    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_8
    return-void
.end method

.method public getAddressBytes()[B
    .locals 0

    .line 899
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    return-object p0
.end method

.method public getContentType()I
    .locals 0

    .line 907
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mContentType:I

    return p0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 0

    .line 895
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDestAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorCause()I
    .locals 0

    .line 915
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCauseCode:I

    return p0
.end method

.method public getErrorClass()I
    .locals 0

    .line 919
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mErrorClass:I

    return p0
.end method

.method public getMessageRef()I
    .locals 0

    .line 554
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMessageRef:I

    return p0
.end method

.method public getMessageType()I
    .locals 0

    .line 504
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgType:I

    return p0
.end method

.method public getMsgID()I
    .locals 0

    .line 903
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgId:I

    return p0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 0

    .line 923
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mScAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusReportRequested()Z
    .locals 0

    .line 508
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mStatusReportRequested:Z

    return p0
.end method

.method public getTpdu()[B
    .locals 0

    .line 911
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B

    return-object p0
.end method

.method public parseCdmaDeliverPdu([B)V
    .locals 8

    .line 301
    const-string v0, "SmsMessage"

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 302
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 306
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMessageType:I

    .line 308
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v2

    if-lez v2, :cond_6

    .line 309
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 310
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    .line 311
    new-array v4, v3, [B

    .line 312
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parameterId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    const-string/jumbo v5, "parseOutgoingCdmaSms: parameterData - the end of the stream has been reached."

    const/4 v6, 0x6

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_0

    .line 390
    :try_start_1
    new-instance p0, Ljava/lang/Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unsupported parameterId ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    .line 361
    :pswitch_1
    invoke-virtual {p1, v4, v7, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_1

    .line 363
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    iput v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerDataLength:I

    .line 366
    iput-object v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    if-eqz v3, :cond_0

    .line 369
    new-array v2, v6, [B

    .line 370
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 371
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 372
    invoke-virtual {v4, v2, v7, v6}, Ljava/io/DataInputStream;->read([BII)I

    move-result v5

    if-gez v5, :cond_2

    .line 374
    const-string/jumbo v5, "parseCdmaDeliverPdu: messageId - the end of the stream has been reached."

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_2
    new-instance v5, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v5, v2}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 380
    :try_start_2
    invoke-direct {p0, v5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->decodeMessageId(Lcom/android/internal/util/BitwiseInputStream;)V
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_1
    move-exception v2

    .line 382
    :try_start_3
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream$AccessException;->printStackTrace()V

    .line 384
    :goto_1
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 385
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    goto/16 :goto_0

    .line 350
    :pswitch_2
    invoke-virtual {p1, v4, v7, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_3

    .line 352
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_3
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v2, v4}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 355
    invoke-virtual {v2, v6}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    aget-byte v3, v3, v7

    iput v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mReplySeqNo:I

    const/4 v3, 0x2

    .line 356
    invoke-virtual {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    aget-byte v3, v3, v7

    iput v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mErrorClass:I

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    .line 358
    invoke-virtual {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v2

    aget-byte v2, v2, v7

    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCauseCode:I

    goto/16 :goto_0

    .line 342
    :pswitch_3
    invoke-virtual {p1, v4, v7, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_4

    .line 344
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_4
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v2, v4}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 347
    invoke-virtual {v2, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerReplyOptionValue:I

    goto/16 :goto_0

    .line 331
    :pswitch_4
    new-array v2, v3, [B

    .line 332
    invoke-virtual {p1, v2}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    if-gez v3, :cond_5

    .line 334
    const-string/jumbo v3, "parseCdmaDeliverPdu: address - the end of the stream has been reached."

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_5
    invoke-direct {p0, v2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseCdmaAddress([B)V

    goto/16 :goto_0

    .line 327
    :pswitch_5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mServiceCategory:I

    goto/16 :goto_0

    .line 320
    :pswitch_6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTeleServiceid:I

    goto/16 :goto_0

    .line 393
    :cond_6
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 394
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 396
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseCdmaDeliverPdu: conversion from pdu to SmsMessage failed"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public parseDeliverPdu([BLjava/lang/String;)V
    .locals 2

    .line 511
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 512
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 515
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 516
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    const-string p1, "3gpp"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 528
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getSCAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mScAddress:Ljava/lang/String;

    .line 529
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getByte()I

    move-result p1

    const/4 p2, 0x3

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 539
    :cond_0
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgType:I

    .line 541
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getByte()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMessageRef:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 536
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgType:I

    goto :goto_0

    .line 548
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getByte()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMessageRef:I

    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 518
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getMessageType: conversion from byte array to object failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsMessage"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 523
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public parseOutgoingCdmaSms([B)V
    .locals 9

    .line 402
    const-string v0, "SmsMessage"

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 403
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 404
    array-length p1, p1

    .line 407
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTeleServiceid:I

    .line 408
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 409
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mServiceCategory:I

    .line 411
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    .line 412
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    .line 413
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNetworktype:I

    .line 414
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberPlan:I

    .line 416
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    const-string v3, " > pdu len "

    if-gt v1, p1, :cond_5

    .line 424
    :try_start_1
    new-array v4, p1, [B

    const/4 v5, 0x0

    .line 425
    invoke-virtual {v2, v4, v5, v1}, Ljava/io/DataInputStream;->read([BII)I

    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 426
    const-string/jumbo v6, "parseOutgoingCdmaSms: parameterData - the end of the stream has been reached."

    if-gez v1, :cond_0

    .line 427
    :try_start_2
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :catch_1
    move-exception p0

    goto/16 :goto_5

    .line 429
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v1, v4}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 431
    iget v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    new-array v7, v4, [B

    .line 432
    new-array v4, v4, [B

    iput-object v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    .line 435
    iget v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    if-nez v4, :cond_1

    move v4, v5

    .line 437
    :goto_1
    iget v8, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    if-ge v4, v8, :cond_2

    const/4 v8, 0x4

    .line 438
    invoke-virtual {v1, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 439
    invoke-virtual {v1, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    and-int/lit8 v8, v8, 0xf

    int-to-byte v8, v8

    .line 442
    invoke-static {v8}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->convertDtmfToAscii(B)B

    move-result v8

    aput-byte v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    if-ne v4, v8, :cond_2

    move v4, v5

    .line 446
    :goto_2
    iget v8, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    if-ge v4, v8, :cond_2

    const/16 v8, 0x8

    .line 447
    invoke-virtual {v1, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 448
    aput-byte v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 451
    :cond_2
    iput-object v7, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    .line 452
    new-instance v1, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v7, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDestAddress:Ljava/lang/String;

    .line 453
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    .line 454
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    .line 455
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    .line 458
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerDataLength:I

    if-gt v1, p1, :cond_4

    .line 466
    new-array p1, v1, [B

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    .line 467
    invoke-virtual {v2, p1, v5, v1}, Ljava/io/DataInputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_3

    .line 469
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->decodeBearerData([B)V

    .line 472
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    goto :goto_4

    .line 462
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseOutgoingCdmaSms: Invalid pdu, bearerDataLength "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerDataLength:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 420
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createFromPdu: Invalid pdu, addr.numberOfDigits "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 477
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseOutgoingCdmaSms2: conversion from byte array to object failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    .line 474
    :goto_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseOutgoingCdmaSms1: conversion from byte array to object failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public parseOutgoingGsmSms()V
    .locals 4

    .line 483
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getSCAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mScAddress:Ljava/lang/String;

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseOutgoingGsmSms() : mScAddress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mScAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsMessage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    const/16 v2, 0x20

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 487
    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mStatusReportRequested:Z

    if-eq v1, v3, :cond_1

    goto :goto_1

    .line 490
    :cond_1
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    .line 491
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getGsmAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDestAddress:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public parseSubmitPdu([BLjava/lang/String;)[B
    .locals 6

    .line 202
    const-string v0, "SmsMessage"

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x12c

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 203
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 206
    :try_start_0
    const-string v3, "3gpp2"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 207
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseOutgoingCdmaSms([B)V

    const/4 p1, 0x0

    .line 209
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 212
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write(I)V

    const/4 p2, 0x2

    .line 213
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->write(I)V

    .line 214
    iget p2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTeleServiceid:I

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeChar(I)V

    const/4 p2, 0x4

    .line 216
    invoke-direct {p0, p2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->encodeCdmaAddress(I)[B

    move-result-object p2

    if-eqz p2, :cond_0

    .line 218
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    const/16 p2, 0x8

    .line 222
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->write(I)V

    .line 223
    iget p2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerDataLength:I

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->write(I)V

    .line 224
    iget-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 226
    iget p2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerDataLength:I

    if-eqz p2, :cond_2

    const/4 p2, 0x6

    .line 227
    new-array v3, p2, [B

    .line 228
    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 229
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 230
    invoke-virtual {v5, v3, p1, p2}, Ljava/io/DataInputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_1

    .line 232
    const-string/jumbo p1, "parseSubmitPdu: messageId - the end of the stream has been reached."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 235
    new-instance p1, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->decodeMessageId(Lcom/android/internal/util/BitwiseInputStream;)V
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 240
    :try_start_2
    invoke-virtual {p1}, Lcom/android/internal/util/BitwiseInputStream$AccessException;->printStackTrace()V

    .line 244
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->decodeBearerData([B)V

    .line 245
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B

    goto :goto_2

    .line 247
    :cond_3
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 248
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B

    .line 249
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseOutgoingGsmSms()V

    .line 252
    :goto_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 253
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    .line 255
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 257
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    return-object p0

    :catch_2
    move-exception p1

    .line 260
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object p0
.end method
