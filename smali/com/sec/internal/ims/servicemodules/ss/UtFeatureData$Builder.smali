.class public Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;
.super Ljava/lang/Object;
.source "UtFeatureData.java"


# instance fields
.field protected cbbaic:Ljava/lang/String;

.field protected cbbaoc:Ljava/lang/String;

.field protected cbbicwr:Ljava/lang/String;

.field protected cbboic:Ljava/lang/String;

.field protected cbboic_exhc:Ljava/lang/String;

.field protected cfUriType:Ljava/lang/String;

.field protected cfb:Ljava/lang/String;

.field protected cfni:Ljava/lang/String;

.field protected cfnr:Ljava/lang/String;

.field protected cfnrc:Ljava/lang/String;

.field protected cfu:Ljava/lang/String;

.field protected csfbErrorCodeList:[Ljava/lang/String;

.field protected delay_disconnect_pdn:I

.field protected insertNewRule:Z

.field protected ip_version:I

.field protected isCBSingleElement:Z

.field protected isCFSingleElement:Z

.field protected isDisconnectXcapPdn:Z

.field protected isErrorMsgDisplay:Z

.field protected isNeedFirstGet:Z

.field protected isNeedInternationalNumber:Z

.field protected isNeedSeparateCFA:Z

.field protected isNeedSeparateCFNL:Z

.field protected isNeedSeparateCFNRY:Z

.field protected isReuseConnection:Z

.field private mPhoneId:I

.field protected noMediaForCB:Z

.field protected setAllMediaCF:Z

.field protected ssXcapConfigExempt:I

.field protected supportAlternativeMediaForCb:Z

.field protected supportAlternativeMediaForCf:Z

.field protected supportCallbarring:Z

.field protected supportSimservsRetry:Z

.field protected support_media:Z

.field protected support_ss_namespace:Z

.field protected support_tls:Z

.field protected timerFor403:I

.field protected ussdExempt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;
    .locals 5

    .line 134
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_support_tls"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->support_tls:Z

    .line 135
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_select_mode"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->isCFSingleElement:Z

    .line 136
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_cb_select_mode"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->isCBSingleElement:Z

    .line 137
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_support_media"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->support_media:Z

    .line 138
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_support_ss_namespace"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->support_ss_namespace:Z

    .line 139
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_support_simservs_retry"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->supportSimservsRetry:Z

    .line 140
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_cf_busy_ruleid"

    const-string v4, "call-diversion-busy-audio"

    invoke-static {v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cfb:Ljava/lang/String;

    .line 141
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_cf_unconditional_ruleid"

    const-string v4, "call-diversion-unconditional"

    invoke-static {v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cfu:Ljava/lang/String;

    .line 142
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_cf_no_answer_ruleId"

    const-string v4, "call-diversion-no-reply"

    invoke-static {v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cfnr:Ljava/lang/String;

    .line 143
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_cf_not_reachable_ruleid"

    const-string v4, "call-diversion-not-reachable-audio"

    invoke-static {v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cfnrc:Ljava/lang/String;

    .line 144
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_cf_not_logged_in_ruleid"

    const-string v4, "call-diversion-not-logged-in"

    invoke-static {v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cfni:Ljava/lang/String;

    .line 145
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_icb_unconditional_ruleid"

    const-string v4, ""

    invoke-static {v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cbbaic:Ljava/lang/String;

    .line 146
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_icb_roaming_ruleid"

    invoke-static {v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cbbicwr:Ljava/lang/String;

    .line 147
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_ocb_unconditional_ruleid"

    invoke-static {v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cbbaoc:Ljava/lang/String;

    .line 148
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_ocb_international_ruleid"

    invoke-static {v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cbboic:Ljava/lang/String;

    .line 149
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_ocb_international_ex_home_ruleid"

    invoke-static {v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cbboic_exhc:Ljava/lang/String;

    .line 150
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_timer_for_403"

    const/4 v4, -0x1

    invoke-static {v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->timerFor403:I

    .line 151
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_need_separate_CFNL"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->isNeedSeparateCFNL:Z

    .line 152
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_need_separate_CFNRy"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->isNeedSeparateCFNRY:Z

    .line 153
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_need_separate_CFA"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->isNeedSeparateCFA:Z

    .line 154
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_is_need_get_first"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->isNeedFirstGet:Z

    .line 155
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_error_msg_display"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->isErrorMsgDisplay:Z

    .line 156
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_disconnect_xcap_pdn"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->isDisconnectXcapPdn:Z

    .line 157
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_reuse_connection"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->isReuseConnection:Z

    .line 158
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_delay_disconnect_xcap_pdn"

    const/4 v4, 0x5

    invoke-static {v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->delay_disconnect_pdn:I

    .line 159
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string v1, "all"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "ss_csfb_error_code_list"

    invoke-static {v0, v4, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->csfbErrorCodeList:[Ljava/lang/String;

    .line 160
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_select_ip_version"

    const-string v4, "default"

    invoke-static {v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doConvertIpVersion(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->ip_version:I

    .line 161
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_insert_new_rule"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->insertNewRule:Z

    .line 162
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_no_media_for_CB"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->noMediaForCB:Z

    .line 163
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_cf_set_all_media"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->setAllMediaCF:Z

    .line 164
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_cf_uri_type"

    const-string v4, "SIP"

    invoke-static {v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cfUriType:Ljava/lang/String;

    .line 165
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_support_alternative_media_for_cf"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->supportAlternativeMediaForCf:Z

    .line 166
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_support_alternative_media_for_cb"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->supportAlternativeMediaForCb:Z

    .line 167
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_is_need_international_number"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->isNeedInternationalNumber:Z

    .line 168
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_xcap_config_exempt"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->ssXcapConfigExempt:I

    .line 169
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ussi_exempt"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->ussdExempt:I

    .line 170
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    const-string/jumbo v1, "ss_support_callbarring"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->supportCallbarring:Z

    .line 172
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;)V

    return-object v0
.end method

.method public setPhoneId(I)Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;
    .locals 0

    .line 176
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->mPhoneId:I

    return-object p0
.end method
