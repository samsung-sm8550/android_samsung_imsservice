.class public Lcom/sec/internal/helper/header/AuthorizationHeader;
.super Lcom/sec/internal/helper/header/AuthenticationHeaders;
.source "AuthorizationHeader.java"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private cnonce:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private nonceCount:Ljava/lang/String;

.field private opaque:Ljava/lang/String;

.field private qop:Ljava/lang/String;

.field private realm:Ljava/lang/String;

.field private response:Ljava/lang/String;

.field private uri:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/sec/internal/helper/header/AuthenticationHeaders;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->userName:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->realm:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->nonce:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->algorithm:Ljava/lang/String;

    .line 49
    const-string v1, "/"

    iput-object v1, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->uri:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->qop:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->opaque:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->cnonce:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->nonceCount:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->response:Ljava/lang/String;

    return-void
.end method

.method public static getAuthorizationHeader(Lcom/sec/internal/helper/httpclient/DigestAuth;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;)Ljava/lang/String;
    .locals 6

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getRealm()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getDigestUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getNonce()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getResp()Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", algorithm="

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getQop()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    const-string v1, ", nc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getNC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, ", qop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getQop()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getCnonce()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "\""

    if-nez v1, :cond_1

    .line 159
    const-string v1, ", cnonce=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getCnonce()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 162
    const-string p0, ", opaque=\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    const-string v1, "Digest username=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\", realm=\""

    .line 220
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\", uri=\""

    .line 221
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\", nonce=\""

    .line 222
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\", response=\""

    .line 223
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;)Ljava/lang/String;
    .locals 11

    .line 169
    invoke-virtual/range {p5 .. p5}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v10, Lcom/sec/internal/helper/httpclient/DigestAuth;

    .line 171
    invoke-virtual/range {p5 .. p5}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-virtual/range {p5 .. p5}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    aget-object v9, v0, v1

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/helper/httpclient/DigestAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getRealm()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getDigestUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getNonce()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getResp()Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    const-string v1, ", algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_0
    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getQop()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    const-string v1, ", nc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getNC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, ", qop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getQop()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_1
    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getCnonce()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "\""

    if-nez v1, :cond_2

    .line 184
    const-string v1, ", cnonce=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getCnonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 187
    const-string v1, ", opaque=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;)Ljava/lang/String;
    .locals 11

    .line 194
    invoke-virtual/range {p6 .. p6}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v10, Lcom/sec/internal/helper/httpclient/DigestAuth;

    .line 196
    invoke-virtual/range {p6 .. p6}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-virtual/range {p6 .. p6}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    aget-object v9, v0, v1

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/helper/httpclient/DigestAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getRealm()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getDigestUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getNonce()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getResp()Ljava/lang/String;

    move-result-object v5

    .line 199
    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", algorithm="

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", auts=\""

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getQop()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    const-string v2, ", nc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getNC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v2, ", qop="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getQop()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_0
    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getCnonce()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 208
    const-string v2, ", cnonce=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getCnonce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_1
    invoke-virtual/range {p6 .. p6}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 211
    const-string v2, ", opaque=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getCnonce()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->cnonce:Ljava/lang/String;

    return-object p0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->nonce:Ljava/lang/String;

    return-object p0
.end method

.method public getNonceCount()Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->nonceCount:Ljava/lang/String;

    return-object p0
.end method

.method public final getParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 127
    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public getQop()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->qop:Ljava/lang/String;

    return-object p0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->realm:Ljava/lang/String;

    return-object p0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->response:Ljava/lang/String;

    return-object p0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->userName:Ljava/lang/String;

    return-object p0
.end method

.method public setCnonce(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->cnonce:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorizationHeader [username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->userName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", realm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->realm:Ljava/lang/String;

    .line 137
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->nonce:Ljava/lang/String;

    .line 138
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->algorithm:Ljava/lang/String;

    .line 139
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->uri:Ljava/lang/String;

    .line 140
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", qop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->qop:Ljava/lang/String;

    .line 141
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", opaque="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->opaque:Ljava/lang/String;

    .line 142
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cnonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->cnonce:Ljava/lang/String;

    .line 143
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nonceCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->nonceCount:Ljava/lang/String;

    .line 144
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/header/AuthorizationHeader;->response:Ljava/lang/String;

    .line 145
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
