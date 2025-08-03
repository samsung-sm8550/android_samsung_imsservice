.class public abstract Lorg/xbill/DNS/EDNSOption$Code;
.super Ljava/lang/Object;
.source "EDNSOption.java"


# static fields
.field private static codes:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "EDNS Option Codes"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/EDNSOption$Code;->codes:Lorg/xbill/DNS/Mnemonic;

    const v1, 0xffff

    .line 29
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 30
    sget-object v0, Lorg/xbill/DNS/EDNSOption$Code;->codes:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "CODE"

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setPrefix(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lorg/xbill/DNS/EDNSOption$Code;->codes:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 33
    sget-object v0, Lorg/xbill/DNS/EDNSOption$Code;->codes:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x3

    const-string v2, "NSID"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 34
    sget-object v0, Lorg/xbill/DNS/EDNSOption$Code;->codes:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x8

    const-string v2, "CLIENT_SUBNET"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lorg/xbill/DNS/EDNSOption$Code;->codes:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
