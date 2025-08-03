.class public Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;
.super Ljava/lang/Object;
.source "SoftphoneRequestBuilder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SoftphoneRequestBuilder"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static buildExchangeForAccessTokenRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ExchangeForAccessTokenRequest;
    .locals 8

    .line 45
    new-instance v7, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ExchangeForAccessTokenRequest;

    const-string/jumbo v4, "password"

    const-string v6, "SOFTPHONE CALLHANDLINGFEATURES EMERGENCYSERVICES"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ExchangeForAccessTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public static buildProvisionAccountRequest()Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ProvisionAccountRequest;
    .locals 2

    .line 55
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ProvisionAccountRequest;

    const-string v1, "Yes"

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ProvisionAccountRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildReleaseImsNetworkIdentifiersRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ReleaseImsNetworkIdentifiersRequest;
    .locals 3

    .line 127
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildReleaseImsNetworkIdentifiersRequest [IMPI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", IMPU: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ReleaseImsNetworkIdentifiersRequest;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ReleaseImsNetworkIdentifiersRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildRevokeTokenRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/RevokeTokenRequest;
    .locals 1

    .line 51
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/RevokeTokenRequest;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/RevokeTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildSendSMSRequest(Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/SendSMSRequest;
    .locals 3

    .line 256
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/SendSMSRequest;

    const/4 v1, 0x0

    const-string v2, "AT&T Msg: You have activated NumberSync. NumberSync allows you to make and receive calls on your other device using the same mobile number as your smartphone, even when your smartphone is not nearby or connected to the same Wi-Fi network. Visit att.com/numbersync for more info."

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/SendSMSRequest;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildSetCallForwardingInfoRequest(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)Ljava/lang/String;
    .locals 11

    .line 158
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v1, "communication-diversion"

    const/4 v2, 0x0

    const-string/jumbo v3, "ss"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-boolean v1, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mActive:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    const-string v4, "active"

    invoke-virtual {v0, v4, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 163
    iget-boolean v1, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mActive:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mNoReplyTimer:I

    if-lez v1, :cond_1

    .line 164
    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v5, "NoReplyTimer"

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, v4}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 169
    :cond_1
    new-instance v1, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v4, "rule"

    invoke-direct {v1, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mForwardCondition:I

    .line 170
    invoke-static {v4}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces$SoftphoneCallHandling;->getId(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v1, v5, v4}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 171
    const-string v4, "cp"

    invoke-virtual {v1, v4}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 173
    iget-boolean v5, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mActive:Z

    const-string/jumbo v6, "target"

    const-string v7, "forward-to"

    const-string v8, "actions"

    const-string v9, "conditions"

    if-eqz v5, :cond_2

    .line 184
    new-instance v5, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v5, v9}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v5, v4}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    new-instance v9, Lcom/sec/internal/constants/ims/XmlElement;

    iget v10, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mForwardCondition:I

    .line 186
    invoke-static {v10}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces$SoftphoneCallHandling;->getCondition(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    .line 185
    invoke-virtual {v1, v5}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 189
    iget-boolean v5, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mRetained:Z

    if-nez v5, :cond_3

    .line 190
    new-instance v5, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v5, v8}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    new-instance v8, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v8, v7, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/sec/internal/constants/ims/XmlElement;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "tel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mForwardNumber:Ljava/lang/String;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v7, v6, p0, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v8, v7}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p0

    .line 191
    invoke-virtual {v5, p0}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p0

    .line 190
    invoke-virtual {v1, p0}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    goto :goto_1

    .line 207
    :cond_2
    new-instance v5, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v5, v9}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    new-instance v9, Lcom/sec/internal/constants/ims/XmlElement;

    iget v10, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mForwardCondition:I

    .line 208
    invoke-static {v10}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces$SoftphoneCallHandling;->getCondition(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    new-instance v9, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v10, "rule-deactivated"

    invoke-direct {v9, v10, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v5, v9}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    .line 207
    invoke-virtual {v1, v5}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 213
    iget-boolean p0, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mRetained:Z

    if-eqz p0, :cond_3

    .line 214
    new-instance p0, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {p0, v8}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p0

    new-instance v5, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v5, v7, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v8, ""

    invoke-direct {v7, v6, v8, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v5, v7}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v3

    .line 215
    invoke-virtual {p0, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p0

    .line 214
    invoke-virtual {v1, p0}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 220
    :cond_3
    :goto_1
    new-instance p0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v3, "ruleset"

    invoke-direct {p0, v3, v2, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p0

    .line 222
    invoke-virtual {v0, p0}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p0

    .line 224
    const-string v0, "1.0"

    const-string v1, "UTF-8"

    invoke-static {p0, v0, v1}, Lcom/sec/internal/constants/ims/XmlCreator;->toXml(Lcom/sec/internal/constants/ims/XmlElement;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildSetCallWaitingInfoRequest(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)Ljava/lang/String;
    .locals 4

    .line 134
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    const/4 v1, 0x0

    const-string/jumbo v2, "ss"

    const-string v3, "communication-waiting"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-boolean p0, p0, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;->mActive:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string v1, "active"

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p0

    .line 137
    const-string v0, "1.0"

    const-string v1, "UTF-8"

    invoke-static {p0, v0, v1}, Lcom/sec/internal/constants/ims/XmlCreator;->toXml(Lcom/sec/internal/constants/ims/XmlElement;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDelimitedAddressString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "houseNumber"

    .line 112
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "houseNumExt"

    .line 113
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "streetDir"

    .line 114
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "street"

    .line 115
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "streetNameSuffix"

    .line 116
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "streetDirSuffix"

    .line 117
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "city"

    .line 118
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "state"

    .line 119
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "zip"

    .line 120
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "addressAdditional"

    .line 121
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "E911AID"

    .line 122
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "expire_date"

    .line 123
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildAddAddressRequest(I)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddAddressRequest;
    .locals 8

    .line 91
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildAddAddressRequest [addressId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v0, p1

    .line 93
    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildAddressUri(J)Landroid/net/Uri;

    move-result-object v3

    .line 94
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 96
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->getDelimitedAddressString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    .line 98
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddAddressRequest;

    invoke-direct {v0, p1}, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddAddressRequest;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 103
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public buildAddressValidationRequest(IZ)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddressValidationRequest;
    .locals 12

    .line 59
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildAddressValidationRequest [addressId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", confirmed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v0, p1

    .line 61
    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildAddressUri(J)Landroid/net/Uri;

    move-result-object v3

    .line 62
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 64
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    new-instance p1, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddressValidationRequest$Address;

    const-string v0, "houseNumber"

    .line 68
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "houseNumExt"

    .line 69
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "streetDir"

    .line 70
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "street"

    .line 71
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "streetNameSuffix"

    .line 72
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "streetDirSuffix"

    .line 73
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "city"

    .line 74
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "state"

    .line 75
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "zip"

    .line 76
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v0, "addressAdditional"

    .line 77
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v1, "ATT WiFi Calling"

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddressValidationRequest$Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddressValidationRequest;

    if-eqz p2, :cond_0

    const-string/jumbo p2, "true"

    goto :goto_0

    :cond_0
    const-string p2, "false"

    :goto_0
    invoke-direct {v0, p1, p2}, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddressValidationRequest;-><init>(Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddressValidationRequest$Address;Ljava/lang/String;)V

    .line 81
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 84
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public buildObtainPdCookiesQueryParams(Ljava/lang/String;ILjavax/crypto/SecretKey;Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljavax/crypto/SecretKey;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 228
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildObtainPdCookiesQueryParams [accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v0, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    const-string/jumbo v1, "softphone"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;-><init>(Ljava/lang/String;)V

    .line 232
    const-string v1, "AES"

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->getInstance(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    move-result-object v1

    .line 234
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tguard_appid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "tguard_token"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 239
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 241
    :try_start_0
    const-string p2, "TG_OP"

    const-string v0, "SessionGen"

    invoke-virtual {p1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string p2, "appID"

    invoke-virtual {v1, v2, p3}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string p2, "atsToken"

    invoke-virtual {v1, p0, p3}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string/jumbo p0, "style"

    invoke-virtual {p1, p0, p4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string/jumbo p0, "returnErrorCode"

    const-string/jumbo p2, "true"

    invoke-virtual {p1, p0, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string/jumbo p0, "targetURL"

    const-string p2, "http://good.com"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string p0, "errorURL"

    const-string p2, "http://error.com"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 249
    sget-object p2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "exception"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method
