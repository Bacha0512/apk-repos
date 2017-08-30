.class public Lcom/weirdvoice/widgets/RegistrationNotification;
.super Landroid/widget/RemoteViews;
.source "RegistrationNotification.java"


# static fields
.field private static final cells:[Ljava/lang/Integer;

.field private static final icons:[Ljava/lang/Integer;

.field private static final texts:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-array v0, v5, [Ljava/lang/Integer;

    .line 42
    const v1, 0x7f0b0116

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 43
    const v1, 0x7f0b011a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 44
    const v1, 0x7f0b011e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 41
    sput-object v0, Lcom/weirdvoice/widgets/RegistrationNotification;->cells:[Ljava/lang/Integer;

    .line 47
    new-array v0, v5, [Ljava/lang/Integer;

    .line 48
    const v1, 0x7f0b0118

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 49
    const v1, 0x7f0b011c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 50
    const v1, 0x7f0b0120

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 47
    sput-object v0, Lcom/weirdvoice/widgets/RegistrationNotification;->icons:[Ljava/lang/Integer;

    .line 53
    new-array v0, v5, [Ljava/lang/Integer;

    .line 54
    const v1, 0x7f0b0119

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 55
    const v1, 0x7f0b011d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 56
    const v1, 0x7f0b0121

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 53
    sput-object v0, Lcom/weirdvoice/widgets/RegistrationNotification;->texts:[Ljava/lang/Integer;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/widgets/RegistrationNotification;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/widgets/RegistrationNotification;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/widgets/RegistrationNotification;-><init>(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "aPackageName"    # Ljava/lang/String;

    .prologue
    .line 60
    const v0, 0x7f03004c

    invoke-direct {p0, p1, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 61
    return-void
.end method


# virtual methods
.method public addAccountInfos(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/weirdvoice/api/SipProfileState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "activeAccountsInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/weirdvoice/api/SipProfileState;>;"
    const/4 v2, 0x0

    .line 93
    .local v2, "i":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 113
    return-void

    .line 93
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/api/SipProfileState;

    .line 95
    .local v0, "accountInfo":Lcom/weirdvoice/api/SipProfileState;
    sget-object v6, Lcom/weirdvoice/widgets/RegistrationNotification;->cells:[Ljava/lang/Integer;

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 96
    sget-object v6, Lcom/weirdvoice/widgets/RegistrationNotification;->cells:[Ljava/lang/Integer;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/weirdvoice/widgets/RegistrationNotification;->setViewVisibility(II)V

    .line 97
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipProfileState;->getWizard()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/weirdvoice/wizards/WizardUtils;->getWizardClass(Ljava/lang/String;)Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    move-result-object v4

    .line 98
    .local v4, "wizardInfos":Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;
    if-eqz v4, :cond_2

    .line 99
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipProfileState;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 100
    .local v1, "dName":Ljava/lang/CharSequence;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->appname()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0c000e

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "tickerText":Ljava/lang/CharSequence;
    sget-object v6, Lcom/weirdvoice/widgets/RegistrationNotification;->icons:[Ljava/lang/Integer;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getlogo()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/weirdvoice/widgets/RegistrationNotification;->setImageViewResource(II)V

    .line 103
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 104
    sget-object v6, Lcom/weirdvoice/widgets/RegistrationNotification;->texts:[Ljava/lang/Integer;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6, v3}, Lcom/weirdvoice/widgets/RegistrationNotification;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 109
    .end local v1    # "dName":Ljava/lang/CharSequence;
    .end local v3    # "tickerText":Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public clearRegistrations()V
    .locals 6

    .prologue
    .line 79
    sget-object v2, Lcom/weirdvoice/widgets/RegistrationNotification;->cells:[Ljava/lang/Integer;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 82
    return-void

    .line 79
    :cond_0
    aget-object v0, v2, v1

    .line 80
    .local v0, "cellId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x8

    invoke-virtual {p0, v4, v5}, Lcom/weirdvoice/widgets/RegistrationNotification;->setViewVisibility(II)V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setTextsColor(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 116
    if-nez p1, :cond_1

    .line 122
    :cond_0
    return-void

    .line 119
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/weirdvoice/widgets/RegistrationNotification;->texts:[Ljava/lang/Integer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 120
    sget-object v1, Lcom/weirdvoice/widgets/RegistrationNotification;->texts:[Ljava/lang/Integer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/weirdvoice/widgets/RegistrationNotification;->setTextColor(II)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
