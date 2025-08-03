.class public Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;
.super Ljava/lang/Object;
.source "TmoEcholocateInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Echolocate_Info"

.field protected static final LTE_RAT:Ljava/lang/String; = "3GPP-E-UTRAN-FDD"

.field private static final NETWORK_NA:Ljava/lang/String; = "NA"

.field private static final NETWORK_TYPE_ENDC:Ljava/lang/String; = "ENDC"

.field private static final NETWORK_TYPE_LTE:Ljava/lang/String; = "LTE"

.field private static final NETWORK_TYPE_SA5G:Ljava/lang/String; = "SA5G"

.field private static final NETWORK_TYPE_WIFI:Ljava/lang/String; = "WFC2"

.field protected static final NR_EPSFB_FAILED:I = 0x3

.field protected static final NR_EPSFB_INIT:I = 0x0

.field protected static final NR_EPSFB_STARTED:I = 0x1

.field protected static final NR_EPSFB_SUCCESS:I = 0x2

.field private static final NR_FDD_RAT:Ljava/lang/String; = "3GPP-NR-FDD"

.field private static final NR_RAT:Ljava/lang/String; = "3GPP-NR"

.field private static final NR_STATUS_CONNECTED:I = 0x3

.field protected static final NR_TAU_REJECT:I = 0x4

.field private static final NR_TDD_RAT:Ljava/lang/String; = "3GPP-NR-TDD"

.field private static final RAT_5G:I = 0x6

.field private static final RAT_LTE:I = 0x3

.field private static final SIGNATURES_ECHO_APP:Landroid/content/pm/Signature;

.field private static final SIGNATURES_MY_TMOBILE:Landroid/content/pm/Signature;

.field private static final SPRINT_HUB_SIGNATURES:Landroid/content/pm/Signature;

.field private static final WIFI_RAT:Ljava/lang/String; = "IEEE-802.11"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

.field private mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

.field private mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 571
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308203623082024aa00302010202044df1bf45300d06092a864886f70d01010505003073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e301e170d3131303631303036353235335a170d3338313032363036353235335a3073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e30820122300d06092a864886f70d01010105000382010f003082010a0282010100c1456176d31c8989df7e0b30569da5c9b782380d3ff28fb48b4a17c8a125f40ba14862518397800f7a1030bf7cc188b9296d84af5cc5dc37752a1ca2c33d654258a3fdd29d19f2a0dd4e24b328b03bfef8c17bb8da11a25fdae10c1e1e288e3c1f47ee47617972382b0854474da1d6b526b9787d9a2f8e00600a4e436bfa790d04a0376fd7bd5c6ee78a6e522bbaa969d63667d17ca8fd90087fcc4acf2a2676d341a8e19dc46beb82bb1990710bd4101df8943ef8a3f2d7cb0bac6677ae69f9f3d25c134c08dfeb82000f44dea4164f90a65e352387fdd203c3479cfb380a2f8af5af3219a726ba9d82d72229a8d32979ce84be52006f4b71fe75011e8e2d090203010001300d06092a864886f70d01010505000382010100188d18ea72a49334736e118e766744489c7a5c47543cc35cc62a8cce35e84dfd426af3595fe55192dcb2a54c594a8d0de064dad96d72969fbc873c7a9fe7e14b11aed16c6d4bf90c1911b7d8a054c0c34c7a58c4a434d46e72f6142b654af24d461089c4633aa21cead0b154efac0aec4d68403c51bceab76c33a819857531c6a459a266f495f810417e9583d71f3f53a533f1e7013007253e9ed3466432a21977837669cff2b6b20612c055ff09b44ca15ca6830cdb289398d290852d3b0204deecbb00292194cc7533e5ae593e0d355883ea8022eb6fe5e807d6c059b3f6d6f637cd4014da425742f21b54ec37c6f55d3f0b8b6ced1cbc09376e8ea023396f"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->SIGNATURES_MY_TMOBILE:Landroid/content/pm/Signature;

    .line 601
    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->SIGNATURES_ECHO_APP:Landroid/content/pm/Signature;

    .line 631
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "3082036c30820254a00302010202044d23332e300d06092a864886f70d01010505003078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b6579301e170d3131303130343134343831345a170d3338303532323134343831345a3078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b657930820122300d06092a864886f70d01010105000382010f003082010a0282010100b3cca5f477ea6e744a61b7c19706d7976da388ea4b8598c4fbc5c31cc95abb3a7b949d5b10692d397f3d980eb7c5e305b2eac5329d485c76a2df1b530d3cffa5f4c436735449bd676eabc403e2981edfe883b296dbf89bdd655e2b8a065d68189db9763681aee66e1c0bed05defc4dbc9d749a04a4206b89cc9d6765ab726d3301fdffe21285fcffe8ba2c3069048e3435c8b73b0aeb79433e3dd5d19e35f3c618dc95103b89a562f4952543cf1221797fa3cbb224184e17fcb95c5c7474db377f106918cf84bbecb2da57c3bb2e01d4d4939dcf7e3c01288a9d3909606f99b040a62a920112a21b23602f1473966d3d3379018a2e0088e0209587ea06e084dd0203010001300d06092a864886f70d01010505000382010100766f3c7d3e9db4364856693f6acb07af7269d0524d5b6bb6072e78fd0873a102f427de9affa72d3b297c997d601d9678f6d670beaf0425653527ec327dc4817082b9afaa1ce10d3f979b5d950efe1ef5eeeecc06c0aebab6e941cc25983a6be2c724c7e2b2bbe52de9ffd10e0cb4b99f83c1680c5a5927e3752d9d5b7f30c53a93f83b17c708cb338550dc2d64b6f58f2594f6af3bef770dd4d2551818dbd8cbe6b853b9e8b611d2766dcadf57e2b2c42aa3bb7c914461686df500c0a9cc01ab3df1bc997a1c8608df7a3e335cf628682f8015ca274d10476b3b3eaa34c224301d6a92a85624a4c56473a54e56a7ae395edb012472c1b07bc84202da98433238"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->SPRINT_HUB_SIGNATURES:Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->pm:Landroid/content/pm/PackageManager;

    .line 66
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 67
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    .line 68
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 72
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->pm:Landroid/content/pm/PackageManager;

    .line 75
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 76
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    .line 77
    const-string/jumbo p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private checkEchoAppSignatureKey()Z
    .locals 2

    .line 563
    const-string v0, "com.tmobile.echolocate"

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->SIGNATURES_ECHO_APP:Landroid/content/pm/Signature;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->checkPackageSignature(Ljava/lang/String;Landroid/content/pm/Signature;)Z

    move-result p0

    return p0
.end method

.method private checkMyTmobileSignatureKey()Z
    .locals 2

    .line 559
    const-string v0, "com.tmobile.pr.mytmobile"

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->SIGNATURES_MY_TMOBILE:Landroid/content/pm/Signature;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->checkPackageSignature(Ljava/lang/String;Landroid/content/pm/Signature;)Z

    move-result p0

    return p0
.end method

.method private checkPackageSignature(Ljava/lang/String;Landroid/content/pm/Signature;)Z
    .locals 4

    const/4 v0, 0x0

    .line 540
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->pm:Landroid/content/pm/PackageManager;

    const-wide/32 v1, 0x8000000

    .line 541
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    .line 540
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez p0, :cond_0

    return v0

    .line 543
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 545
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 546
    invoke-virtual {v3, p2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not installed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Echolocate_Info"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method private checkPackageSprintHubSignatureKey()Z
    .locals 2

    .line 567
    const-string v0, "com.sprint.ms.smf.services"

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->SPRINT_HUB_SIGNATURES:Landroid/content/pm/Signature;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->checkPackageSignature(Ljava/lang/String;Landroid/content/pm/Signature;)Z

    move-result p0

    return p0
.end method

.method private getTelephonyManager(I)Landroid/telephony/TelephonyManager;
    .locals 1

    .line 315
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 316
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method private getValueDeviceConfig(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    .line 240
    const-string v0, "Echolocate_Info"

    if-eqz p2, :cond_0

    .line 243
    const-string/jumbo v1, "tag"

    goto :goto_0

    .line 242
    :cond_0
    const-string/jumbo v1, "xpath"

    .line 245
    :goto_0
    const-string v2, "content://com.samsung.ims.entitlementconfig.provider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "config"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 247
    const-string/jumbo v2, "tag_name"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 248
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 250
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    .line 251
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 253
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 p1, 0x1

    .line 255
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 258
    :cond_2
    const-string p1, "getValueDeviceConfig : cursor is null"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    :goto_1
    if-eqz p0, :cond_4

    .line 260
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :goto_2
    if-eqz p0, :cond_3

    .line 250
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p1
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 262
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getValueDeviceConfig: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "-2"

    :cond_4
    :goto_5
    return-object p1
.end method

.method private parseBands5GXml(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 269
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 271
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 273
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 274
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 278
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 279
    const-string v1, "StandaloneBands5G"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "StandaloneBands5G_NRCA"

    .line 280
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 282
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x4

    const-string v3, ""

    if-ne v1, v2, :cond_0

    .line 283
    :try_start_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    move-object v1, v3

    .line 285
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "true"

    .line 286
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v3, v1

    .line 285
    :cond_2
    :goto_2
    invoke-virtual {p0, p1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    goto :goto_0

    .line 291
    :cond_4
    const-string p1, "Echolocate_Info"

    const-string v0, "End document"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 293
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-object p0
.end method


# virtual methods
.method protected checkSecurity(Ljava/lang/String;)Z
    .locals 2

    .line 526
    const-string v0, "TMB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "TMK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    const-string v0, "SPR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 531
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->checkPackageSprintHubSignatureKey()Z

    move-result p0

    return p0

    :cond_1
    return v1

    .line 527
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->checkMyTmobileSignatureKey()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->checkEchoAppSignatureKey()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method protected getCellId(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 504
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCellId Type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Echolocate_Info"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getAllCellInfo(IZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 507
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 508
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellInfo;

    .line 509
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 511
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    .line 512
    instance-of p2, p1, Landroid/telephony/CellIdentityLte;

    if-eqz p2, :cond_2

    .line 513
    check-cast p1, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 515
    :cond_2
    instance-of p2, p1, Landroid/telephony/CellIdentityNr;

    if-eqz p2, :cond_0

    .line 516
    check-cast p1, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 521
    :cond_3
    const-string p0, "-1"

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getCellId : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method protected getConfigVersion()Ljava/lang/String;
    .locals 2

    .line 232
    const-string v0, "//configInfo/version"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getValueDeviceConfig(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 233
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "-1"

    if-nez v0, :cond_1

    .line 234
    const-string v0, "-2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, v1

    :cond_0
    return-object p0

    :cond_1
    return-object v1
.end method

.method protected getEPSFBState(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    .line 152
    const-string p0, "EPSFB_STARTED"

    return-object p0

    :cond_0
    const/4 p0, 0x3

    if-eq p1, p0, :cond_3

    const/4 p0, 0x4

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    .line 160
    const-string p0, "EPSFB_SUCCESSFUL"

    return-object p0

    .line 163
    :cond_2
    const-string p0, ""

    return-object p0

    .line 156
    :cond_3
    :goto_0
    const-string p0, "EPSFB_FAILED"

    return-object p0
.end method

.method protected getLteBand(IZLjava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 352
    const-string v0, "]:"

    const-string v1, "Echolocate_Info"

    const-string/jumbo v2, "ril.lteband"

    const-string v3, "0"

    invoke-static {p1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v4

    .line 354
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    if-nez p2, :cond_4

    const-string p2, "255"

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    .line 357
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->getEPSFBsuccess(I)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p3, :cond_1

    const-string v5, "SA5G"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 359
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    :cond_1
    :try_start_0
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 363
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 364
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 365
    const-string/jumbo p0, "ril.ltescellbands"

    invoke-static {p1, p0, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 366
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 367
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUsingCarrierAggregation() scndBand["

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    const-string p0, "ServiceState is Null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "strband["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", nwType:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 355
    :cond_4
    :goto_1
    const-string p0, "NA"

    return-object p0
.end method

.method protected getNetworkType(IZ)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    .line 321
    const-string p0, "WFC2"

    return-object p0

    .line 324
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->getEPSFBsuccess(I)Z

    move-result p2

    const-string v0, "LTE"

    if-eqz p2, :cond_1

    return-object v0

    .line 329
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p1

    .line 330
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 331
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p2

    const/16 v1, 0x14

    if-ne p2, v1, :cond_2

    .line 332
    const-string p0, "SA5G"

    return-object p0

    .line 335
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 337
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_3

    .line 338
    const-string p0, "ENDC"
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_3
    return-object v0

    .line 345
    :catch_0
    const-string p0, "Echolocate_Info"

    const-string p1, "ServiceState is Null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_4
    const-string p0, "NA"

    return-object p0
.end method

.method protected getNetworkTypeForEPSFB(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    const-string p0, "LTE"

    return-object p0

    .line 128
    :cond_1
    :goto_0
    const-string p0, "SA5G"

    return-object p0
.end method

.method protected getNetworkTypeForPSHO(IIII)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 109
    const-string v1, "SA5G"

    const/4 v2, 0x6

    const-string v3, "LTE"

    if-ne p2, v0, :cond_1

    if-ne p3, v2, :cond_0

    return-object v1

    :cond_0
    return-object v3

    :cond_1
    const/4 p3, 0x3

    if-eq p2, p3, :cond_4

    const/4 p3, 0x4

    if-ne p2, p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    if-ne p2, p0, :cond_3

    if-ne p4, v2, :cond_3

    return-object v1

    :cond_3
    return-object v3

    :cond_4
    :goto_0
    const/4 p2, 0x0

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getNetworkType(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getNewAppCallId()Ljava/lang/String;
    .locals 2

    .line 102
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->getRandom()Ljava/security/SecureRandom;

    move-result-object p0

    const v0, 0x55d4a7f

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p0

    const v0, 0x989680

    add-int/2addr p0, v0

    .line 103
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "make new echo AppCallId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Echolocate_Info"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method protected getNwStateSignal(IZ)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 380
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    .line 381
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 385
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 386
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v2, 0xd

    .line 388
    :goto_0
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->getSignalStrength(I)Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    move-result-object v4

    .line 389
    const-string v5, "NA"

    if-eqz v4, :cond_1

    .line 390
    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getDbm(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v5

    .line 393
    :goto_1
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    const/4 v8, 0x3

    const/4 v9, 0x1

    .line 395
    const-string v10, ""

    const-string v11, ";"

    if-eqz p2, :cond_4

    if-eqz v7, :cond_3

    .line 397
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 398
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object v7, v10

    goto :goto_2

    :cond_3
    move-object v7, v5

    .line 401
    :goto_2
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mContext:Landroid/content/Context;

    invoke-static {v0, v9, v1}, Lcom/sec/internal/constants/ims/VowifiConfig;->getPrefMode(Landroid/content/Context;II)I

    move-result v0

    if-ne v0, v8, :cond_5

    .line 403
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    const-string v0, ";NA;NA;NA;NA;NA;NA;"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v7, v5

    .line 409
    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v6, 0x14

    const-string v12, "Echolocate_Info"

    const-string v13, "]"

    const-string v14, ";NA;"

    if-eqz v0, :cond_7

    .line 410
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    move/from16 v17, v2

    goto/16 :goto_4

    :cond_7
    if-eqz v4, :cond_6

    .line 413
    const-string v0, " "

    if-ne v2, v6, :cond_8

    .line 414
    invoke-virtual {v4}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getNrLevel()I

    move-result v15

    invoke-virtual {v4}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getInvalidSignalStrength()I

    move-result v9

    if-eq v15, v9, :cond_8

    .line 415
    invoke-virtual {v4}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getNrSsRsrp()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 416
    invoke-virtual {v4}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getNrSsRsrq()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 417
    invoke-virtual {v4}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getNrSsSinr()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 418
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v2

    const-string v2, "Nr [ rsrp: rsrq: sinr: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    move/from16 v17, v2

    .line 420
    invoke-virtual {v4}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getLteRsrp()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 421
    invoke-virtual {v4}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getLteRsrq()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default LTE [ rsrp: rsrq:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 424
    :goto_3
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :goto_4
    move-object v6, v5

    move-object v9, v6

    move-object v15, v9

    .line 429
    :goto_5
    const-string/jumbo v0, "ril.signal.param"

    const-string v2, "0"

    invoke-static {v1, v0, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 433
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_11

    .line 435
    array-length v7, v2

    const/4 v8, 0x3

    if-lt v7, v8, :cond_11

    const/4 v7, 0x0

    .line 436
    aget-object v8, v2, v7

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move-object/from16 p2, v12

    const-string v12, "255"

    if-nez v8, :cond_b

    aget-object v8, v2, v7

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_7

    .line 437
    :cond_a
    aget-object v7, v2, v7

    goto :goto_8

    :cond_b
    :goto_7
    move-object v7, v5

    .line 436
    :goto_8
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    move/from16 v7, v17

    const/16 v8, 0x14

    if-ne v7, v8, :cond_c

    if-eqz v4, :cond_c

    .line 445
    invoke-virtual {v4}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getNrLevel()I

    move-result v7

    invoke-virtual {v4}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getInvalidSignalStrength()I

    move-result v4

    if-eq v7, v4, :cond_c

    .line 446
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c

    :cond_c
    const/4 v4, 0x2

    .line 448
    aget-object v6, v2, v4

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    aget-object v6, v2, v4

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_9

    :cond_d
    aget-object v5, v2, v4

    :cond_e
    :goto_9
    aput-object v5, v2, v4

    const/4 v5, 0x1

    .line 449
    aget-object v6, v2, v5

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    aget-object v6, v2, v5

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_a

    .line 450
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_10
    :goto_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v4

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    :goto_b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c

    :cond_11
    move-object/from16 p2, v12

    .line 453
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    const-string v2, ";NA;NA;"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 461
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "signal["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " result["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPSHOState(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    .line 136
    const-string p0, "PSHO_STARTED"

    return-object p0

    :cond_0
    const/4 p0, 0x3

    if-eq p1, p0, :cond_3

    const/4 p0, 0x4

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    .line 144
    const-string p0, "PSHO_SUCCESSFUL"

    return-object p0

    .line 147
    :cond_2
    const-string p0, ""

    return-object p0

    .line 140
    :cond_3
    :goto_0
    const-string p0, "PSHO_FAILED"

    return-object p0
.end method

.method protected getPhoneIdFromSessionId(I)I
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-ge p1, p0, :cond_0

    return v0

    .line 496
    :cond_0
    div-int/lit8 p1, p1, 0xa

    const/4 p0, 0x2

    if-lt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method

.method protected getPreCallSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 4

    .line 466
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v1

    .line 468
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v2

    .line 469
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object p0

    .line 471
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x0

    if-lez p1, :cond_0

    .line 472
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object p0

    .line 473
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 474
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object p0

    .line 475
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 476
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object p0

    .line 477
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 478
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getRatType(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 299
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRatType Type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Echolocate_Info"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string p0, "SA5G"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 301
    const-string/jumbo p0, "ril.nrnetworktype"

    const-string p2, ""

    invoke-static {p1, p0, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 302
    const-string p1, "TDD"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 303
    const-string p0, "3GPP-NR-TDD"

    return-object p0

    .line 304
    :cond_0
    const-string p1, "FDD"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 305
    const-string p0, "3GPP-NR-FDD"

    return-object p0

    .line 307
    :cond_1
    const-string p0, "3GPP-NR"

    return-object p0

    .line 308
    :cond_2
    const-string p0, "WFC2"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 309
    const-string p0, "IEEE-802.11"

    return-object p0

    .line 311
    :cond_3
    const-string p0, "3GPP-E-UTRAN-FDD"

    return-object p0
.end method

.method protected getSDPContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 86
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 88
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 90
    const-string v4, "c="

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "a=rtpmap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "a=recvonly"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "a=sendonly"

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "a=sendrecv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    :cond_0
    const-string v4, "\""

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getSa5gBandConfig(I)Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 215
    invoke-static {p1}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->isSupportedNrca(I)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 216
    const-string p1, "//StandaloneBands5G_NRCA"

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getValueDeviceConfig(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 218
    :cond_0
    const-string p1, "//StandaloneBands5G"

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getValueDeviceConfig(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 221
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    const-string p0, "NONE"

    const-string p1, "-1"

    invoke-virtual {v0, p0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 223
    :cond_1
    const-string v1, "-2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    const-string p0, "ERROR"

    invoke-virtual {v0, p0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 226
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->parseBands5GXml(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method protected getTimeStamp(I)Ljava/lang/String;
    .locals 2

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getVoWiFiConfig()Ljava/lang/String;
    .locals 3

    .line 196
    const-string v0, "//EPSFB/VoWiFiDisable5GSA"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getValueDeviceConfig(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    const-string v0, "//VoNR/VoWiFiDisable5GSA"

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getValueDeviceConfig(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_0
    const-string p0, "-2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    .line 203
    :cond_1
    const-string/jumbo p0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 204
    const-string p0, "DISABLED_5GSA"

    return-object p0

    .line 205
    :cond_2
    const-string p0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 206
    const-string p0, "ENABLED_5GSA"

    return-object p0

    .line 208
    :cond_3
    const-string p0, "DEFAULT_DISABLED_5GSA"

    return-object p0
.end method

.method protected getVoiceConfig()Ljava/lang/String;
    .locals 2

    .line 183
    const-string v0, "//VoNR/VoNRDefault"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getValueDeviceConfig(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 185
    const-string v0, "-2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 187
    :cond_0
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    const-string p0, "ON_VONR"

    return-object p0

    .line 189
    :cond_1
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 190
    const-string p0, "OFF_VONR"

    return-object p0

    .line 192
    :cond_2
    const-string p0, "DEFAULT_ON_VONR"

    return-object p0
.end method

.method protected isEPSFBstate(Ljava/lang/String;)Z
    .locals 1

    .line 167
    const-string p0, "EPSFB_STARTED"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 171
    :cond_0
    const-string p0, "EPSFB_FAILED"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    .line 175
    :cond_1
    const-string p0, "EPSFB_SUCCESSFUL"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method protected isEndCall(Ljava/lang/String;)Z
    .locals 0

    .line 81
    const-string p0, "CANCEL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "BYE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
