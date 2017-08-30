.class public Lcom/weirdvoice/toolbox/TelNumFormatter;
.super Ljava/lang/Object;
.source "TelNumFormatter.java"


# instance fields
.field private udb:Lcom/weirdvoice/toolbox/UpdateDB;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sanitizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    .line 36
    const-string v1, ""

    .line 37
    .local v1, "result":Ljava/lang/String;
    const-string v2, ""

    if-eq p0, v2, :cond_0

    if-nez p0, :cond_1

    .line 38
    :cond_0
    const-string v2, ""

    .line 46
    :goto_0
    return-object v2

    .line 39
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "011"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v2, v1

    .line 46
    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_4

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getCountryISO(Landroid/content/Context;[[Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "countries"    # [[Ljava/lang/String;
    .param p3, "countryAreaCode"    # [[Ljava/lang/String;
    .param p4, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v0, ""

    .line 29
    .local v0, "countryISO":Ljava/lang/String;
    new-instance v1, Lcom/weirdvoice/toolbox/UpdateDB;

    invoke-direct {v1, p1}, Lcom/weirdvoice/toolbox/UpdateDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/weirdvoice/toolbox/TelNumFormatter;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    .line 30
    iget-object v1, p0, Lcom/weirdvoice/toolbox/TelNumFormatter;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    iget-object v2, p0, Lcom/weirdvoice/toolbox/TelNumFormatter;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    invoke-virtual {v2, p3, p4}, Lcom/weirdvoice/toolbox/UpdateDB;->getCountryID([[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/weirdvoice/toolbox/UpdateDB;->getCountryISO([[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    return-object v0
.end method
