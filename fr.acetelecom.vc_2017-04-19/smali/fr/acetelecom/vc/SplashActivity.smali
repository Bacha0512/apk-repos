.class public Lfr/acetelecom/vc/SplashActivity;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static final g:[Ljava/lang/String;

.field private static final h:[I


# instance fields
.field a:Landroid/view/View;

.field b:Lfr/acetelecom/vc/b;

.field c:Landroid/content/Intent;

.field d:Landroid/support/v7/app/a;

.field e:Lcom/google/android/gms/common/api/GoogleApiClient;

.field f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.GET_ACCOUNTS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    sput-object v0, Lfr/acetelecom/vc/SplashActivity;->g:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lfr/acetelecom/vc/SplashActivity;->h:[I

    return-void

    :array_0
    .array-data 4
        0x7f070097
        0x7f070096
        0x7f070098
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfr/acetelecom/vc/SplashActivity;->b:Lfr/acetelecom/vc/b;

    const/4 v0, 0x0

    iput v0, p0, Lfr/acetelecom/vc/SplashActivity;->f:I

    return-void
.end method

.method static synthetic g()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lfr/acetelecom/vc/SplashActivity;->g:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public e()I
    .locals 4

    const/4 v1, -0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lfr/acetelecom/vc/SplashActivity;->g:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lfr/acetelecom/vc/SplashActivity;->g:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "SplashVC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NO PERM ? FOR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lfr/acetelecom/vc/SplashActivity;->g:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public f()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lfr/acetelecom/vc/SplashActivity;->g:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lfr/acetelecom/vc/SplashActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lfr/acetelecom/vc/SplashActivity;->g:[Ljava/lang/String;

    const/16 v2, 0x3e7

    invoke-static {p0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "SplashVC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "permission has already been granted. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lfr/acetelecom/vc/SplashActivity;->g:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lfr/acetelecom/vc/SplashActivity;->d:Landroid/support/v7/app/a;

    new-instance v0, Lfr/acetelecom/vc/b;

    invoke-virtual {p0}, Lfr/acetelecom/vc/SplashActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lfr/acetelecom/vc/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfr/acetelecom/vc/SplashActivity;->b:Lfr/acetelecom/vc/b;

    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/SplashActivity;->setContentView(I)V

    const v0, 0x7f0e00c6

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/SplashActivity;->a:Landroid/view/View;

    invoke-static {p0}, Lcom/google/firebase/a/a;->a(Landroid/content/Context;)Lcom/google/firebase/a/a;

    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->enableAutoManage(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/appinvite/AppInvite;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/SplashActivity;->e:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/appinvite/AppInvite;->AppInviteApi:Lcom/google/android/gms/appinvite/AppInviteApi;

    iget-object v2, p0, Lfr/acetelecom/vc/SplashActivity;->e:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, p0, v0}, Lcom/google/android/gms/appinvite/AppInviteApi;->getInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lfr/acetelecom/vc/SplashActivity$1;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/SplashActivity$1;-><init>(Lfr/acetelecom/vc/SplashActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    invoke-virtual {p0}, Lfr/acetelecom/vc/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const-string v1, "fr.acetelecom.vc.url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "fr.acetelecom.vc.url"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lfr/acetelecom/vc/SplashActivity;->b:Lfr/acetelecom/vc/b;

    const-string v2, "urls"

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "SplashVC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**** intent urls OK onCreate ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/SplashActivity;->b:Lfr/acetelecom/vc/b;

    const-string v3, "urls"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lfr/acetelecom/vc/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lfr/acetelecom/vc/SplashActivity;->c:Landroid/content/Intent;

    invoke-virtual {p0}, Lfr/acetelecom/vc/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.tapjoy.PUSH_PAYLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "SplashVC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tapjoy push notification with payload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lfr/acetelecom/vc/SplashActivity;->b:Lfr/acetelecom/vc/b;

    const-string v2, "urls"

    invoke-virtual {v1, v2, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lfr/acetelecom/vc/SplashActivity;->c:Landroid/content/Intent;

    const-string v2, "com.tapjoy.PUSH_PAYLOAD"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0}, Lfr/acetelecom/vc/SplashActivity;->e()I

    move-result v0

    if-gez v0, :cond_5

    iget-object v0, p0, Lfr/acetelecom/vc/SplashActivity;->c:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/SplashActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_2
    const-string v0, "SplashVC"

    const-string v1, "****** onCreate intent has extra !!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v1, "SplashVC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v0, "SplashVC"

    const-string v1, "??????? onCreate !!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lfr/acetelecom/vc/SplashActivity;->f()V

    goto :goto_1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    const v6, 0x7f070070

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "SplashVC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission callback called-------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lfr/acetelecom/vc/l;->a([I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lfr/acetelecom/vc/SplashActivity;->a:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static {v0, v6, v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.READ_SMS"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lfr/acetelecom/vc/SplashActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v3

    aput-object v1, v0, v3

    invoke-static {p0, v0, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    :goto_0
    iget v0, p0, Lfr/acetelecom/vc/SplashActivity;->f:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Lfr/acetelecom/vc/SplashActivity;->finish()V

    :cond_2
    return-void

    :cond_3
    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lfr/acetelecom/vc/SplashActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v3

    invoke-static {p0, v0, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const-string v0, "android.permission.READ_SMS"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lfr/acetelecom/vc/SplashActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v0, v3

    invoke-static {p0, v0, v5}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lfr/acetelecom/vc/SplashActivity;->d:Landroid/support/v7/app/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lfr/acetelecom/vc/SplashActivity;->d:Landroid/support/v7/app/a;

    invoke-virtual {v0}, Landroid/support/v7/app/a;->hide()V

    iget-object v0, p0, Lfr/acetelecom/vc/SplashActivity;->d:Landroid/support/v7/app/a;

    invoke-virtual {v0}, Landroid/support/v7/app/a;->dismiss()V

    :cond_6
    iget-object v0, p0, Lfr/acetelecom/vc/SplashActivity;->c:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    const-string v0, "SplashVC"

    const-string v1, "permission were NOT granted."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f070094

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lfr/acetelecom/vc/SplashActivity;->h:[I

    aget v0, v0, v3

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_1
    new-instance v1, Landroid/support/v7/app/a$a;

    invoke-direct {v1, p0}, Landroid/support/v7/app/a$a;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/a$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/a$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/a$a;->a(Z)Landroid/support/v7/app/a$a;

    move-result-object v0

    invoke-virtual {p0, v6}, Lfr/acetelecom/vc/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfr/acetelecom/vc/SplashActivity$2;

    invoke-direct {v3, p0}, Lfr/acetelecom/vc/SplashActivity$2;-><init>(Lfr/acetelecom/vc/SplashActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/a$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/a$a;

    iget-object v0, p0, Lfr/acetelecom/vc/SplashActivity;->d:Landroid/support/v7/app/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lfr/acetelecom/vc/SplashActivity;->d:Landroid/support/v7/app/a;

    invoke-virtual {v0}, Landroid/support/v7/app/a;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_9
    invoke-virtual {v1}, Landroid/support/v7/app/a$a;->b()Landroid/support/v7/app/a;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/SplashActivity;->d:Landroid/support/v7/app/a;

    iget-object v0, p0, Lfr/acetelecom/vc/SplashActivity;->d:Landroid/support/v7/app/a;

    invoke-virtual {v0}, Landroid/support/v7/app/a;->show()V

    goto/16 :goto_0

    :cond_a
    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Lfr/acetelecom/vc/SplashActivity;->h:[I

    aget v0, v0, v4

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_b
    const-string v1, "android.permission.READ_SMS"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lfr/acetelecom/vc/SplashActivity;->h:[I

    aget v0, v0, v5

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
