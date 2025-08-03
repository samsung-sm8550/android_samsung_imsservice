.class public abstract Lorg/xbill/DNS/Opcode;
.super Ljava/lang/Object;
.source "Opcode.java"


# static fields
.field private static opcodes:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "DNS Opcode"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xf

    .line 34
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 35
    sget-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "RESERVED"

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setPrefix(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 38
    sget-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    const/4 v3, 0x0

    const-string v4, "QUERY"

    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 39
    sget-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "IQUERY"

    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 40
    sget-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "STATUS"

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 41
    sget-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x4

    const-string v2, "NOTIFY"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 42
    sget-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x5

    const-string v2, "UPDATE"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
