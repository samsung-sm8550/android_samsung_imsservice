.class public Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;
.super Landroid/os/Handler;
.source "McsContactSync.java"


# static fields
.field private static final CS_SIGNATURES:Landroid/content/pm/Signature;

.field public static final EVENT_DEFAULT_SMS_PACKAGE_CHANGED_TO_NON_SEC:I = 0x8

.field static final EVENT_MCS_ACCESS_TOKEN_SHARE:I = 0x4

.field private static final EVENT_MCS_CONTACT_SYNC_TRIGGER_BY_NETWORK:I = 0x7

.field private static final EVENT_MCS_DEREGISTRATION_COMPLETED:I = 0x6

.field private static final EVENT_MCS_REGISTRATION_COMPLETED:I = 0x5

.field public static final EVENT_MCS_START_CONTACT_SYNC_INIT:I = 0x1

.field public static final EVENT_MCS_START_CONTACT_SYNC_UPDATE:I = 0x2

.field private static final EVENT_MCS_STOP_CONTACT_SYNC:I = 0x3


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mCmsListener:Lcom/sec/ims/ICentralMsgStoreServiceListener;

.field private final mContext:Landroid/content/Context;

.field private mIntentReceiver:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;

.field private final mMcsClient:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

.field private final mPhoneId:I

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "3082030b308201f3a003020102020427ba3599300d06092a864886f70d01010b050030363120301e060355040b131750726f64756374506c616e6e696e674469766973696f6e3112301006035504031309534b54656c65636f6d301e170d3133303432353034313334345a170d3433303431383034313334345a30363120301e060355040b131750726f64756374506c616e6e696e674469766973696f6e3112301006035504031309534b54656c65636f6d30820122300d06092a864886f70d01010105000382010f003082010a0282010100bc1ee71062800dc6ea0aad37ac18de0f5c827a90f64c8ec8c61718e58a675d80e81016872f1f1da06e0f05f8423e0037727adefbd043993244822539158d47b521b5d883a151523ee2f4a2fdd19ac364f29a93c1e05159a8b90902968237edf5931e20ca4d80a76bd5f699430d9dfd57387b49063860fe567780bd7e7b6206fef3e030cd1ec39c324cf8914b1c3b1cf1142f16a18bcf401c87ec1253fb1161cc5b97677973c730e574c54ade32ace9693d36be430fc1191ab42938a54d0b36b11e474a2b859682d21aa78ee1e3d023e738ac704edcdc710e16b267985e65f3647c4b040110fa2c03f91ad4055b2a740dcfc1cab708492b9575902a0f97b807f50203010001a321301f301d0603551d0e0416041402ff5ede4a1a2017d26f1d3e6079083f8ab63dc6300d06092a864886f70d01010b050003820101007f10b1b880d054df5bcaab1204071ee9cc554601b431a886e318a5a600a73c4a0300e4c27d09ddea81d2c9f858baf83dc517b68e760dda559fb2500fbd64c308fc367bc038e39d53794612023b08f759dcf13b7d74002e680a1f661bed3f0aa138325345318ee80566bbe4263d42317fd2ff0746ab78d160dc2af871297f2110fc6db4b270a6b0e45b85de411cb02b881721c655127f1e7678af0c96d7621a1822d9931afe5f1e6bfae05f88a800c0783e2c4bd98b81e9de14f54ff9561a9f1b13fb00c44ca10d62b8a22a601e536440b7090355212594f2cb48fbe8e136c46c9169784e9faf42a417bdd3603cb652f6c6e49d6c7b836d310cdbc14f111e254c"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->CS_SIGNATURES:Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;Landroid/content/Context;I)V
    .locals 2

    .line 114
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 34
    const-class v0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->pm:Landroid/content/pm/PackageManager;

    .line 72
    new-instance v1, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync$1;-><init>(Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mCmsListener:Lcom/sec/ims/ICentralMsgStoreServiceListener;

    .line 115
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mMcsClient:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    .line 116
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mContext:Landroid/content/Context;

    .line 117
    iput p3, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    .line 119
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->pm:Landroid/content/pm/PackageManager;

    .line 121
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->registerMcsContactSyncIntentReceiver()V

    .line 122
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->registerContactPushEventListPushListener()V

    const/4 p0, 0x0

    .line 123
    invoke-virtual {p1, v1, p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->registerCmsProvisioningListener(Lcom/sec/ims/ICentralMsgStoreServiceListener;Z)V

    .line 124
    const-string p0, "created"

    invoke-static {v0, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private checkCSAppSignatures()Z
    .locals 6

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mContext:Landroid/content/Context;

    const-string v1, "com.skt.contactsync"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/os/PackageUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->pm:Landroid/content/pm/PackageManager;

    const-wide/32 v3, 0x8000000

    .line 214
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v3

    .line 213
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string v3, "checkCSAppSignatures: signingInfo is null."

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 219
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 221
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 222
    sget-object v5, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->CS_SIGNATURES:Landroid/content/pm/Signature;

    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 223
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string v3, "checkCSAppSignatures: matched signingInfo."

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    :catch_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    const-string v1, "com.skt.contactsync is not installed"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string v1, "checkCSAppSignatures: mismatched signingInfo."

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    return v2
.end method

.method private getMcsAccessToken()Ljava/lang/String;
    .locals 4

    .line 358
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mMcsClient:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMcsAccessToken: accessToken = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method private getMcsUserMdn()Ljava/lang/String;
    .locals 5

    .line 345
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mMcsClient:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 347
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMcsUserMdn: userMdn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", e164UserMdn = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v1, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method private getOasisServerRoot()Ljava/lang/String;
    .locals 4

    .line 352
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mMcsClient:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOasisServerRoot()Ljava/lang/String;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOasisServerRoot: serverRoot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method private handleMcsContactSyncTriggerByNetwork(Ljava/lang/String;)V
    .locals 4

    .line 397
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMcsContactSyncTriggerByNetwork syncType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 399
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "stop"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "init"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "update"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 407
    :pswitch_0
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->stopMcsContactSync(ZZ)V

    goto :goto_1

    .line 401
    :pswitch_1
    invoke-direct {p0, v0, v0, v1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->startMcsContactSync(ZZZ)V

    goto :goto_1

    .line 404
    :pswitch_2
    invoke-direct {p0, v1, v0, v1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->startMcsContactSync(ZZZ)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x31ffc737 -> :sswitch_2
        0x316510 -> :sswitch_1
        0x360802 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleMcsDeRegistrationCompleted()V
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string v2, "handleMcsDeRegistrationCompleted"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 393
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleMcsRegistrationCompleted(I)V
    .locals 4

    .line 381
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMcsRegistrationCompleted: details = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 384
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 386
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private handleShareMcsAccessToken(Ljava/lang/String;Z)V
    .locals 4

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShareMcsAccessToken: userMdn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", forceRefresh = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 320
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->isMcsUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string p2, "handleShareMcsAccessToken: it\'s not MCS user"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 323
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->getMcsUserMdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 324
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string p2, "handleShareMcsAccessToken: userMdn is different"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 328
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",CS:SHR_TK,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, -0x6ffefffd

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 329
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mMcsClient:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->requestMcsAccessToken(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 330
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string p2, "handleShareMcsAccessToken: requested to refresh"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 333
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string p2, "handleShareMcsAccessToken: requestMcsAccessToken failed"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 335
    invoke-direct {p0, p1, p1, p1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->startMcsContactSync(ZZZ)V

    :goto_0
    return-void
.end method

.method private isMcsUser()Z
    .locals 1

    .line 341
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mMcsClient:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerContactPushEventListPushListener()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mMcsClient:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    new-instance v1, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync$2;-><init>(Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->setMcsFcmPushNotificationListener(Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;)V

    return-void
.end method

.method private registerMcsContactSyncIntentReceiver()V
    .locals 4

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mIntentReceiver:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string/jumbo v2, "registerMcsContactSyncIntentReceiver"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 366
    new-instance v0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;-><init>(Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mIntentReceiver:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;

    .line 367
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 368
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mIntentReceiver:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;->getPackageIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private startMcsContactSync(ZZZ)V
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startMcsContactSync: initialSync = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", triggerByNetwork = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", needStartActivity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->isMcsUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string/jumbo p2, "startMcsContactSync: it\'s not MCS user"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->checkCSAppSignatures()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isDefaultMessageAppInUse(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->getMcsUserMdn()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->getOasisServerRoot()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->getMcsAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_2

    .line 255
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    if-eqz p3, :cond_3

    .line 257
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v4, "contactsync://launch"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    .line 259
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 261
    :cond_3
    const-string v4, "com.samsung.ims.mcs.START_CONTACT_SYNC"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    :goto_0
    const-string v4, "USER_MDN"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v0, "SERVER_ROOT"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v0, "ACCESS_TOKEN"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string/jumbo v0, "yes"

    if-eqz p1, :cond_4

    .line 267
    const-string v1, "INITIAL_SYNC"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    if-eqz p2, :cond_5

    .line 270
    const-string v1, "PUSH_EVENT"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    :cond_5
    const-string v0, "com.skt.contactsync"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 273
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 275
    const-string v0, "]"

    if-eqz p3, :cond_6

    .line 277
    :try_start_0
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 278
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p3, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivity [initial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 279
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",CS:ST_ACT,"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/high16 p2, -0x6fff0000

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 281
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "startMcsContactSync: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 284
    :cond_6
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 285
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start [initial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", push: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v1, v0}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 286
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",CS:ST,"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, -0x6ffeffff

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    :goto_1
    return-void

    .line 251
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string/jumbo p2, "startMcsContactSync: mandatory param is invalid"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method

.method private unregisterMcsContactSyncIntentReceiver()V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mIntentReceiver:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string/jumbo v2, "unregisterMcsContactSyncIntentReceiver"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mIntentReceiver:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 376
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mIntentReceiver:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 204
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string v0, "handleMessage: Undefined message."

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 200
    :pswitch_0
    invoke-virtual {p0, v1, v1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->stopMcsContactSync(ZZ)V

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->handleMcsContactSyncTriggerByNetwork(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->handleMcsDeRegistrationCompleted()V

    goto :goto_0

    .line 188
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->handleMcsRegistrationCompleted(I)V

    goto :goto_0

    .line 178
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 180
    const-string v0, "USER_MDN"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string v2, "FORCE_REFRESH"

    .line 182
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 181
    const-string/jumbo v1, "yes"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 183
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->handleShareMcsAccessToken(Ljava/lang/String;Z)V

    goto :goto_0

    .line 174
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->stopMcsContactSync(ZZ)V

    goto :goto_0

    .line 170
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, v1, v1, p1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->startMcsContactSync(ZZZ)V

    goto :goto_0

    .line 166
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->startMcsContactSync(ZZZ)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stopMcsContactSync(ZZ)V
    .locals 5

    .line 291
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopMcsContactSync: serviceOff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", triggerByNetwork = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->getMcsUserMdn()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->checkCSAppSignatures()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 295
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string/jumbo p2, "stopMcsContactSync: userMdn is empty"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 300
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 301
    const-string v2, "com.samsung.ims.mcs.STOP_CONTACT_SYNC"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v2, "USER_MDN"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string/jumbo v0, "yes"

    if-eqz p1, :cond_2

    .line 304
    const-string v2, "SERVICE_OFF"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p2, :cond_3

    .line 307
    const-string v2, "PUSH_EVENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    :cond_3
    const-string v0, "com.skt.contactsync"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 310
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stop  [serviceOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", push: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",CS:STP,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, -0x6ffefffe

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 313
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
