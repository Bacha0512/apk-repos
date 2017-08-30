.class Lcom/oneaudience/sdk/j;
.super Lcom/oneaudience/sdk/e;


# static fields
.field private static final d:Ljava/lang/String;

.field private static final e:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneaudience/sdk/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneaudience/sdk/j;->d:Ljava/lang/String;

    const-string v0, "https://graph.facebook.com/v2.5/me"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneaudience/sdk/j;->e:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneaudience/sdk/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/oneaudience/sdk/b/a/c;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "access_token"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fields"

    const-string v2, "id,first_name,gender,last_name,link,locale,name,timezone,updated_time,verified,email"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/oneaudience/sdk/b/a/c;

    sget-object v2, Lcom/oneaudience/sdk/j;->e:Landroid/net/Uri;

    invoke-static {v2, v0}, Lcom/oneaudience/sdk/b/h;->a(Landroid/net/Uri;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v3, v3, v2}, Lcom/oneaudience/sdk/b/a/c;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Z)V

    return-object v1
.end method

.method public a(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/oneaudience/sdk/b/a/d;)V
    .locals 5

    iget v0, p3, Lcom/oneaudience/sdk/b/a/d;->a:I

    const v1, 0x186a0

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "facebook_json"

    iget-object v2, p3, Lcom/oneaudience/sdk/b/a/d;->c:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/oneaudience/sdk/j;->d:Ljava/lang/String;

    const-string v1, "Can\'t get Json From Facebook get Code: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p3, Lcom/oneaudience/sdk/b/a/d;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/oneaudience/sdk/b/d;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
