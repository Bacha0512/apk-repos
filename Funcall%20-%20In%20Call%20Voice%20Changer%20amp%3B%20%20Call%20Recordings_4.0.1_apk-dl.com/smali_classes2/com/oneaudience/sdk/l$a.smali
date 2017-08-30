.class Lcom/oneaudience/sdk/l$a;
.super Lcom/oneaudience/sdk/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneaudience/sdk/q",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oneaudience/sdk/l;


# direct methods
.method private constructor <init>(Lcom/oneaudience/sdk/l;)V
    .locals 0

    iput-object p1, p0, Lcom/oneaudience/sdk/l$a;->a:Lcom/oneaudience/sdk/l;

    invoke-direct {p0}, Lcom/oneaudience/sdk/q;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneaudience/sdk/l;Lcom/oneaudience/sdk/l$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneaudience/sdk/l$a;-><init>(Lcom/oneaudience/sdk/l;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneaudience/sdk/l$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/oneaudience/sdk/l$a;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v0}, Lcom/oneaudience/sdk/l;->c(Lcom/oneaudience/sdk/l;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneaudience/sdk/f;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneaudience/sdk/l$a;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v1}, Lcom/oneaudience/sdk/l;->a(Lcom/oneaudience/sdk/l;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "advertising_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
