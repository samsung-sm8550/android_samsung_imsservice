.class public Lcom/sec/internal/ims/servicemodules/ss/UtLog;
.super Ljava/lang/Object;
.source "UtLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractCrLogFromResponse(I[Landroid/os/Bundle;)Ljava/lang/String;
    .locals 14

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x64

    .line 213
    const-string/jumbo v2, "}"

    const-string/jumbo v3, "serviceClass"

    const-string v4, ",{"

    const-string/jumbo v5, "status"

    const/4 v6, 0x1

    const-string v7, ","

    const/4 v8, 0x0

    if-eq p0, v1, :cond_2

    const/16 v1, 0x66

    if-eq p0, v1, :cond_1

    const/16 v1, 0x68

    if-eq p0, v1, :cond_1

    const/16 v1, 0x72

    if-eq p0, v1, :cond_0

    goto/16 :goto_2

    .line 239
    :cond_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p1, v8

    invoke-virtual {p0, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogStatus(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 233
    :cond_1
    array-length p0, p1

    move v1, v8

    :goto_0
    if-ge v1, p0, :cond_5

    aget-object v9, p1, v1

    .line 234
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogStatus(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v9, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogSsClass(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_2
    array-length p0, p1

    move v1, v8

    :goto_1
    if-ge v1, p0, :cond_5

    aget-object v9, p1, v1

    .line 216
    invoke-virtual {v9, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 217
    const-string v11, "condition"

    invoke-virtual {v9, v11, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 218
    const-string/jumbo v12, "number"

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 219
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 220
    const-string v12, ""

    .line 223
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogStatus(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-static {v12}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    .line 226
    const-string v11, "NoReplyTimer"

    invoke-virtual {v9, v11, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_4
    invoke-static {v10}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogSsClass(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 244
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractCrLogFromUtProfile(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Ljava/lang/String;
    .locals 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",>,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 101
    :pswitch_0
    const-string p0, "GET_SD"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 142
    :pswitch_1
    const-string p0, "PUT_CW,"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogStatus(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 111
    :pswitch_2
    const-string p0, "GET_CW"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 154
    :pswitch_3
    const-string p0, "PUT_COLR,"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 123
    :pswitch_4
    const-string p0, "GET_COLR"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 151
    :pswitch_5
    const-string p0, "PUT_COLP,"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 120
    :pswitch_6
    const-string p0, "GET_COLP"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 148
    :pswitch_7
    const-string p0, "PUT_CLIR,"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 117
    :pswitch_8
    const-string p0, "GET_CLIR"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 145
    :pswitch_9
    const-string p0, "PUT_CLIP,"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 114
    :pswitch_a
    const-string p0, "GET_CLIP"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 135
    :pswitch_b
    const-string v1, "PUT_CB,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogCbType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogSsClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->password:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 108
    :pswitch_c
    const-string p0, "GET_CB,"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogCbType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 126
    :pswitch_d
    const-string v1, "PUT_CF,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogCfType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogSsClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 104
    :pswitch_e
    const-string p0, "GET_CF,"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogCfType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static extractLogFromError(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    const-string v1, " {error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "originErrorCode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringErrorCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, " converted error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "errorCode"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractLogFromResponse(I[Landroid/os/Bundle;)Ljava/lang/String;
    .locals 18

    move/from16 v0, p0

    move-object/from16 v1, p1

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x64

    .line 165
    const-string/jumbo v4, "serviceClass"

    const-string v5, " serviceClass: "

    const-string v6, " status: "

    const-string v7, "condition"

    const-string/jumbo v8, "status"

    const-string/jumbo v9, "}"

    const/4 v10, 0x1

    const-string v11, ","

    const/4 v12, 0x0

    if-eq v0, v3, :cond_3

    const/16 v3, 0x66

    if-eq v0, v3, :cond_2

    const/16 v3, 0x68

    if-eq v0, v3, :cond_2

    const/16 v3, 0x6c

    if-eq v0, v3, :cond_1

    const/16 v3, 0x72

    if-eq v0, v3, :cond_0

    .line 204
    const-string/jumbo v1, "requestType["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringRequestType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 195
    :cond_0
    const-string/jumbo v0, "queryCallWaiting"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {status: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v12

    invoke-virtual {v0, v8, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringStatus(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 198
    :cond_1
    aget-object v0, v1, v12

    const-string/jumbo v1, "queryClir"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_6

    .line 200
    const-string/jumbo v1, "queryCLIR {"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v12

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 187
    :cond_2
    const-string/jumbo v0, "queryCallBarring"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    array-length v0, v1

    move v3, v12

    :goto_0
    if-ge v3, v0, :cond_6

    aget-object v13, v1, v3

    .line 189
    const-string v14, " {cbType: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v14}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCbType(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v14}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringStatus(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringSsClass(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    :cond_3
    const-string/jumbo v0, "queryCallForward"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    array-length v0, v1

    move v3, v12

    :goto_1
    if-ge v3, v0, :cond_6

    aget-object v13, v1, v3

    .line 169
    invoke-virtual {v13, v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 170
    invoke-virtual {v13, v7, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 171
    const-string/jumbo v10, "number"

    invoke-virtual {v13, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 172
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 173
    const-string v10, ""

    .line 176
    :cond_4
    const-string v12, " {cfType: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCfType(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v13, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringStatus(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v12, " number: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    if-ne v15, v10, :cond_5

    .line 180
    const-string v10, " NoReplyTimer: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "NoReplyTimer"

    const/4 v12, 0x0

    invoke-virtual {v13, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    .line 182
    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringSsClass(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x1

    goto :goto_1

    .line 207
    :cond_6
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractLogFromUtProfile(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    .line 13
    const-string/jumbo p0, "profile is null"

    return-object p0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const-string v2, ", action = "

    const-string v3, ", ssClass = "

    const-string v4, " {enable = "

    const-string/jumbo v5, "}"

    packed-switch v1, :pswitch_data_0

    .line 90
    :pswitch_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 87
    :pswitch_1
    const-string/jumbo p0, "updateACB"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 44
    :pswitch_2
    const-string/jumbo p0, "queryACB"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 19
    :pswitch_3
    const-string/jumbo p0, "querySimServDoc"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 65
    :pswitch_4
    const-string/jumbo v1, "updateCallWaiting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringStatus(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringSsClass(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 29
    :pswitch_5
    const-string/jumbo p0, "queryCallWaiting"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 83
    :pswitch_6
    const-string/jumbo v1, "updateCOLR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {presentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 41
    :pswitch_7
    const-string/jumbo p0, "queryCOLR"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 79
    :pswitch_8
    const-string/jumbo v1, "updateCOLP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 38
    :pswitch_9
    const-string/jumbo p0, "queryCOLP"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 75
    :pswitch_a
    const-string/jumbo v1, "updateCLIR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {clirMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringClirMode(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 35
    :pswitch_b
    const-string/jumbo p0, "queryCLIR"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 71
    :pswitch_c
    const-string/jumbo v1, "updateCLIP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 32
    :pswitch_d
    const-string/jumbo p0, "queryCLIP"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 57
    :pswitch_e
    const-string/jumbo v1, "updateCallBarring"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, " {cbType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCbType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringSsClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", password = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->password:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 26
    :pswitch_f
    const-string/jumbo v1, "queryCallBarring"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cbType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCbType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 47
    :pswitch_10
    const-string/jumbo v1, "updateCallForward"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, " {cfType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCfType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringSsClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", noReplyTimer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 22
    :pswitch_11
    const-string/jumbo v1, "queryCallForward"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cfType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCfType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_f
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
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getCrLogAction(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 347
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 344
    :cond_0
    const-string p0, "E"

    return-object p0

    .line 342
    :cond_1
    const-string p0, "R"

    return-object p0

    .line 338
    :cond_2
    const-string p0, "A"

    return-object p0

    .line 340
    :cond_3
    const-string p0, "D"

    return-object p0
.end method

.method public static getCrLogCbType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 462
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 459
    :cond_0
    const-string p0, "ICWR"

    return-object p0

    .line 457
    :cond_1
    const-string p0, "OIEXHC"

    return-object p0

    .line 455
    :cond_2
    const-string p0, "OI"

    return-object p0

    .line 453
    :cond_3
    const-string p0, "AO"

    return-object p0

    .line 451
    :cond_4
    const-string p0, "AI"

    return-object p0
.end method

.method public static getCrLogCfType(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 428
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 425
    :cond_0
    const-string p0, "NRc"

    return-object p0

    .line 423
    :cond_1
    const-string p0, "NRy"

    return-object p0

    .line 421
    :cond_2
    const-string p0, "B"

    return-object p0

    .line 419
    :cond_3
    const-string p0, "U"

    return-object p0
.end method

.method public static getCrLogSsClass(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0xff

    if-eq p0, v0, :cond_2

    .line 317
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 310
    :cond_0
    const-string p0, "V"

    return-object p0

    .line 308
    :cond_1
    const-string p0, "A"

    return-object p0

    .line 313
    :cond_2
    const-string p0, "ALL"

    return-object p0
.end method

.method private static getCrLogStatus(I)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 266
    const-string p0, "X"

    return-object p0

    .line 268
    :cond_0
    const-string p0, "O"

    return-object p0
.end method

.method private static getCrLogStatus(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 282
    const-string p0, "O"

    return-object p0

    .line 284
    :cond_0
    const-string p0, "X"

    return-object p0
.end method

.method public static getStringAction(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 332
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 329
    :cond_0
    const-string p0, "Erasure"

    return-object p0

    .line 327
    :cond_1
    const-string p0, "Registration"

    return-object p0

    .line 323
    :cond_2
    const-string p0, "Activation"

    return-object p0

    .line 325
    :cond_3
    const-string p0, "Deactivation"

    return-object p0
.end method

.method public static getStringCbType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 445
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 442
    :cond_0
    const-string p0, "Incoming calls when roaming"

    return-object p0

    .line 440
    :cond_1
    const-string p0, "Outgoing international calls except home"

    return-object p0

    .line 438
    :cond_2
    const-string p0, "Outgoing international calls"

    return-object p0

    .line 436
    :cond_3
    const-string p0, "All outgoing calls"

    return-object p0

    .line 434
    :cond_4
    const-string p0, "All incoming calls"

    return-object p0
.end method

.method public static getStringCfType(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 413
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 410
    :pswitch_0
    const-string p0, "Not logged in"

    return-object p0

    .line 408
    :pswitch_1
    const-string p0, "All conditional"

    return-object p0

    .line 406
    :pswitch_2
    const-string p0, "All"

    return-object p0

    .line 404
    :pswitch_3
    const-string p0, "Not reachable"

    return-object p0

    .line 402
    :pswitch_4
    const-string p0, "Unanswered"

    return-object p0

    .line 400
    :pswitch_5
    const-string p0, "Busy"

    return-object p0

    .line 398
    :pswitch_6
    const-string p0, "Unconditional"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getStringClirMode(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 475
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 472
    :cond_0
    const-string p0, "Suppression"

    return-object p0

    .line 470
    :cond_1
    const-string p0, "Invocation"

    return-object p0

    .line 468
    :cond_2
    const-string p0, "Default"

    return-object p0
.end method

.method public static getStringErrorCode(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 554
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->isPdnFailCause(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PDN_REJECT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit16 p0, p0, -0x2726

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 558
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 552
    :pswitch_0
    const-string p0, "EMPTY_DNS"

    return-object p0

    .line 550
    :pswitch_1
    const-string p0, "TIMEOUT"

    return-object p0

    .line 548
    :pswitch_2
    const-string p0, "INVALID_PDN_REQUEST"

    return-object p0

    .line 546
    :pswitch_3
    const-string p0, "HTTP_CONNECTION_ERROR"

    return-object p0

    .line 544
    :pswitch_4
    const-string p0, "START_PDN_FAILURE"

    return-object p0

    .line 542
    :pswitch_5
    const-string p0, "NOT_REGISTERED_IN_VOLTEREGIED"

    return-object p0

    .line 540
    :pswitch_6
    const-string p0, "PUT_BLOCKED"

    return-object p0

    .line 538
    :pswitch_7
    const-string p0, "SERVICE_DEACTIVATED"

    return-object p0

    .line 536
    :pswitch_8
    const-string p0, "NOT_SUPPORT_BARRING"

    return-object p0

    .line 534
    :pswitch_9
    const-string p0, "NO_XCAP_APN"

    return-object p0

    .line 532
    :pswitch_a
    const-string p0, "INVALID_REQUEST"

    return-object p0

    .line 530
    :pswitch_b
    const-string p0, "NOT_CONFIGURED"

    return-object p0

    .line 528
    :pswitch_c
    const-string p0, "NO_MATCHED_PROFILE"

    return-object p0

    .line 526
    :pswitch_d
    const-string p0, "NO_DDS_SLOT"

    return-object p0

    .line 524
    :pswitch_e
    const-string p0, "SIM_NOT_READY"

    return-object p0

    .line 522
    :pswitch_f
    const-string p0, "ALREADY_FORBIDDEN"

    return-object p0

    .line 520
    :pswitch_10
    const-string p0, "NOT_SUPPORT_BA_ALL"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_10
        :pswitch_f
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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getStringMessage(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 514
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 509
    :pswitch_0
    const-string p0, "EVENT_REQUEST_TIMEOUT"

    return-object p0

    .line 507
    :pswitch_1
    const-string p0, "EVENT_INIT_SS_403"

    return-object p0

    .line 505
    :pswitch_2
    const-string p0, "EVENT_CACHE_RESULT_PARSE"

    return-object p0

    .line 503
    :pswitch_3
    const-string p0, "EVENT_REQUEST_FAIL"

    return-object p0

    .line 501
    :pswitch_4
    const-string p0, "EVENT_HTTP_FAIL"

    return-object p0

    .line 499
    :pswitch_5
    const-string p0, "EVENT_HTTP_COMPLETE"

    return-object p0

    .line 497
    :pswitch_6
    const-string p0, "EVENT_SEPARATE_MEDIA"

    return-object p0

    .line 495
    :pswitch_7
    const-string p0, "EVENT_SEPARATE_CF_ALL"

    return-object p0

    .line 493
    :pswitch_8
    const-string p0, "EVENT_SEPARATE_CFNRY"

    return-object p0

    .line 491
    :pswitch_9
    const-string p0, "EVENT_SEPARATE_CFNL"

    return-object p0

    .line 489
    :pswitch_a
    const-string p0, "EVENT_DOCUMENT_CACHE_RESET"

    return-object p0

    .line 487
    :pswitch_b
    const-string p0, "EVENT_TERMINAL_REQUEST"

    return-object p0

    .line 485
    :pswitch_c
    const-string p0, "EVENT_PDN_DISCONNECTED"

    return-object p0

    .line 483
    :pswitch_d
    const-string p0, "EVENT_DISCONNECT_PDN"

    return-object p0

    .line 481
    :pswitch_e
    const-string p0, "EVENT_PDN_CONNECTED"

    return-object p0

    .line 511
    :cond_0
    const-string p0, "EVENT_REQUEST_PDN"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getStringRequestType(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 392
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 389
    :pswitch_1
    const-string p0, "SS_PUT_ACB"

    return-object p0

    .line 387
    :pswitch_2
    const-string p0, "SS_GET_ACB"

    return-object p0

    .line 385
    :pswitch_3
    const-string p0, "SS_GET_SD"

    return-object p0

    .line 383
    :pswitch_4
    const-string p0, "SS_PUT_CW"

    return-object p0

    .line 381
    :pswitch_5
    const-string p0, "SS_GET_CW"

    return-object p0

    .line 379
    :pswitch_6
    const-string p0, "SS_PUT_COLR"

    return-object p0

    .line 377
    :pswitch_7
    const-string p0, "SS_GET_COLR"

    return-object p0

    .line 375
    :pswitch_8
    const-string p0, "SS_PUT_COLP"

    return-object p0

    .line 373
    :pswitch_9
    const-string p0, "SS_GET_COLP"

    return-object p0

    .line 371
    :pswitch_a
    const-string p0, "SS_PUT_CLIR"

    return-object p0

    .line 369
    :pswitch_b
    const-string p0, "SS_GET_CLIR"

    return-object p0

    .line 367
    :pswitch_c
    const-string p0, "SS_PUT_CLIP"

    return-object p0

    .line 365
    :pswitch_d
    const-string p0, "SS_GET_CLIP"

    return-object p0

    .line 363
    :pswitch_e
    const-string p0, "SS_PUT_OCB"

    return-object p0

    .line 361
    :pswitch_f
    const-string p0, "SS_GET_OCB"

    return-object p0

    .line 359
    :pswitch_10
    const-string p0, "SS_PUT_ICB"

    return-object p0

    .line 357
    :pswitch_11
    const-string p0, "SS_GET_ICB"

    return-object p0

    .line 355
    :pswitch_12
    const-string p0, "SS_PUT_CF"

    return-object p0

    .line 353
    :pswitch_13
    const-string p0, "SS_GET_CF"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getStringSsClass(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0xff

    if-eq p0, v0, :cond_3

    .line 302
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 295
    :cond_0
    const-string p0, "VIDEO"

    return-object p0

    .line 293
    :cond_1
    const-string p0, "SMS"

    return-object p0

    .line 291
    :cond_2
    const-string p0, "AUDIO"

    return-object p0

    .line 298
    :cond_3
    const-string p0, "ALL"

    return-object p0
.end method

.method private static getStringStatus(I)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 258
    const-string p0, "Deactivated"

    return-object p0

    .line 260
    :cond_0
    const-string p0, "Activated"

    return-object p0
.end method

.method private static getStringStatus(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 274
    const-string p0, "Activated"

    return-object p0

    .line 276
    :cond_0
    const-string p0, "Deactivated"

    return-object p0
.end method

.method public static i(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UtXcap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UtXcap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isPdnFailCause(I)Z
    .locals 0

    .line 562
    div-int/lit16 p0, p0, 0x2710

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
