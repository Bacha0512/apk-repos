.class Lfr/acetelecom/vc/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/acetelecom/vc/c$a;
    }
.end annotation


# static fields
.field private static final e:Landroid/os/Handler;


# instance fields
.field a:Ljava/lang/String;

.field private b:Lfr/acetelecom/vc/c$a;

.field private c:Lfr/acetelecom/vc/b;

.field private final d:Landroid/app/ProgressDialog;

.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lfr/acetelecom/vc/c;->e:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lfr/acetelecom/vc/b;Lfr/acetelecom/vc/c$a;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://app1.allogag.com"

    iput-object v0, p0, Lfr/acetelecom/vc/c;->a:Ljava/lang/String;

    iput-object v1, p0, Lfr/acetelecom/vc/c;->b:Lfr/acetelecom/vc/c$a;

    iput-object v1, p0, Lfr/acetelecom/vc/c;->c:Lfr/acetelecom/vc/b;

    iput-object p1, p0, Lfr/acetelecom/vc/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lfr/acetelecom/vc/c;->f:Landroid/content/Context;

    iput-object p3, p0, Lfr/acetelecom/vc/c;->c:Lfr/acetelecom/vc/b;

    iput-object p4, p0, Lfr/acetelecom/vc/c;->b:Lfr/acetelecom/vc/c$a;

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lfr/acetelecom/vc/c;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfr/acetelecom/vc/c;->d:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lfr/acetelecom/vc/c;->d:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lfr/acetelecom/vc/c;->f:Landroid/content/Context;

    const v2, 0x7f070081

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lfr/acetelecom/vc/c;->d:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/c;->d:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/c;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/c;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lfr/acetelecom/vc/c;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/c;->d:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private static a(II)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    packed-switch p1, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lfr/acetelecom/vc/c;)Lfr/acetelecom/vc/c$a;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/c;->b:Lfr/acetelecom/vc/c$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v3, Lfr/acetelecom/vc/m;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfr/acetelecom/vc/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/iws2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/c;->c:Lfr/acetelecom/vc/b;

    invoke-direct {v3, v0, v1}, Lfr/acetelecom/vc/m;-><init>(Ljava/lang/String;Lfr/acetelecom/vc/b;)V

    invoke-virtual {v3, p1, p2}, Lfr/acetelecom/vc/m;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "VCBE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volley:??client.PrepareData("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/c;->b:Lfr/acetelecom/vc/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/c;->b:Lfr/acetelecom/vc/c$a;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lfr/acetelecom/vc/c$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/c;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Lcom/android/volley/toolbox/j;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lfr/acetelecom/vc/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/iws2/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lfr/acetelecom/vc/m;->a:Lorg/json/JSONObject;

    new-instance v4, Lfr/acetelecom/vc/c$1;

    invoke-direct {v4, p0, p1}, Lfr/acetelecom/vc/c$1;-><init>(Lfr/acetelecom/vc/c;Ljava/lang/String;)V

    new-instance v5, Lfr/acetelecom/vc/c$2;

    invoke-direct {v5, p0, p1}, Lfr/acetelecom/vc/c$2;-><init>(Lfr/acetelecom/vc/c;Ljava/lang/String;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/j;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V

    iget-object v1, p0, Lfr/acetelecom/vc/c;->f:Landroid/content/Context;

    invoke-static {v1}, Lfr/acetelecom/vc/j;->a(Landroid/content/Context;)Lfr/acetelecom/vc/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfr/acetelecom/vc/j;->a(Lcom/android/volley/l;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lfr/acetelecom/vc/c;->f:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "VCBE"

    const-string v2, " NOK noNet : "

    invoke-static {v0, v2}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_3

    const-string v3, "VCBE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " OK verif goodNet : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",subtype: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v3, v0}, Lfr/acetelecom/vc/c;->a(II)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    const-string v3, "VCBE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " NOK poorNet ? subtype: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v3, v0}, Lfr/acetelecom/vc/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method
