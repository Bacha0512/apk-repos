.class Lcom/digits/sdk/android/br;
.super Lcom/digits/sdk/android/ag;


# instance fields
.field a:Lcom/digits/sdk/android/SpacedEditText;

.field b:Lcom/digits/sdk/android/internal/LinkTextView;

.field c:Lcom/digits/sdk/android/internal/StateButton;

.field d:Lcom/digits/sdk/android/internal/InvertedStateButton;

.field e:Lcom/digits/sdk/android/internal/InvertedStateButton;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Lcom/digits/sdk/android/an;

.field i:Lcom/digits/sdk/android/cg;

.field j:Landroid/app/Activity;

.field k:Lcom/digits/sdk/android/models/AuthConfigResponse;

.field l:Lcom/digits/sdk/android/internal/g;

.field m:Lcom/digits/sdk/android/j;

.field private final n:Lcom/digits/sdk/android/ar;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/ar;)V
    .locals 0

    invoke-direct {p0}, Lcom/digits/sdk/android/ag;-><init>()V

    iput-object p1, p0, Lcom/digits/sdk/android/br;->n:Lcom/digits/sdk/android/ar;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/br;->i:Lcom/digits/sdk/android/cg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/br;->j:Landroid/app/Activity;

    iget-object v1, p0, Lcom/digits/sdk/android/br;->i:Lcom/digits/sdk/android/cg;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/digits/sdk/android/br;->h:Lcom/digits/sdk/android/an;

    invoke-interface {v0}, Lcom/digits/sdk/android/an;->g()V

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6

    iput-object p1, p0, Lcom/digits/sdk/android/br;->j:Landroid/app/Activity;

    const-string v0, "digits_event_details_builder"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    iput-object v0, p0, Lcom/digits/sdk/android/br;->o:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    sget v0, Lcom/digits/sdk/android/cb$e;->dgts__confirmationEditText:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/SpacedEditText;

    iput-object v0, p0, Lcom/digits/sdk/android/br;->a:Lcom/digits/sdk/android/SpacedEditText;

    sget v0, Lcom/digits/sdk/android/cb$e;->dgts__createAccount:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/internal/StateButton;

    iput-object v0, p0, Lcom/digits/sdk/android/br;->c:Lcom/digits/sdk/android/internal/StateButton;

    sget v0, Lcom/digits/sdk/android/cb$e;->dgts__resendConfirmationButton:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/internal/InvertedStateButton;

    iput-object v0, p0, Lcom/digits/sdk/android/br;->d:Lcom/digits/sdk/android/internal/InvertedStateButton;

    sget v0, Lcom/digits/sdk/android/cb$e;->dgts__callMeButton:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/internal/InvertedStateButton;

    iput-object v0, p0, Lcom/digits/sdk/android/br;->e:Lcom/digits/sdk/android/internal/InvertedStateButton;

    sget v0, Lcom/digits/sdk/android/cb$e;->dgts__editPhoneNumber:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/internal/LinkTextView;

    iput-object v0, p0, Lcom/digits/sdk/android/br;->b:Lcom/digits/sdk/android/internal/LinkTextView;

    sget v0, Lcom/digits/sdk/android/cb$e;->dgts__termsTextCreateAccount:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digits/sdk/android/br;->f:Landroid/widget/TextView;

    sget v0, Lcom/digits/sdk/android/cb$e;->dgts__countdownTimer:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/digits/sdk/android/br;->g:Landroid/widget/TextView;

    const-string v0, "auth_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/models/AuthConfigResponse;

    iput-object v0, p0, Lcom/digits/sdk/android/br;->k:Lcom/digits/sdk/android/models/AuthConfigResponse;

    invoke-virtual {p0, p2}, Lcom/digits/sdk/android/br;->b(Landroid/os/Bundle;)Lcom/digits/sdk/android/an;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/br;->h:Lcom/digits/sdk/android/an;

    new-instance v0, Lcom/digits/sdk/android/internal/g;

    invoke-direct {v0, p1}, Lcom/digits/sdk/android/internal/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/digits/sdk/android/br;->l:Lcom/digits/sdk/android/internal/g;

    new-instance v0, Lcom/digits/sdk/android/j;

    iget-object v1, p0, Lcom/digits/sdk/android/br;->a:Lcom/digits/sdk/android/SpacedEditText;

    const/4 v2, 0x6

    const-string v3, "-"

    iget-object v4, p0, Lcom/digits/sdk/android/br;->c:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {p0, v4}, Lcom/digits/sdk/android/br;->a(Lcom/digits/sdk/android/internal/StateButton;)Lcom/digits/sdk/android/j$a;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/digits/sdk/android/j;-><init>(Landroid/widget/EditText;ILjava/lang/String;Lcom/digits/sdk/android/j$a;)V

    iput-object v0, p0, Lcom/digits/sdk/android/br;->m:Lcom/digits/sdk/android/j;

    iget-object v0, p0, Lcom/digits/sdk/android/br;->h:Lcom/digits/sdk/android/an;

    iget-object v1, p0, Lcom/digits/sdk/android/br;->a:Lcom/digits/sdk/android/SpacedEditText;

    invoke-virtual {p0, p1, v0, v1}, Lcom/digits/sdk/android/br;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/digits/sdk/android/br;->h:Lcom/digits/sdk/android/an;

    iget-object v1, p0, Lcom/digits/sdk/android/br;->c:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {p0, p1, v0, v1}, Lcom/digits/sdk/android/br;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Lcom/digits/sdk/android/internal/StateButton;)V

    iget-object v0, p0, Lcom/digits/sdk/android/br;->h:Lcom/digits/sdk/android/an;

    iget-object v1, p0, Lcom/digits/sdk/android/br;->n:Lcom/digits/sdk/android/ar;

    iget-object v2, p0, Lcom/digits/sdk/android/br;->d:Lcom/digits/sdk/android/internal/InvertedStateButton;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/digits/sdk/android/br;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Lcom/digits/sdk/android/ar;Lcom/digits/sdk/android/internal/InvertedStateButton;)V

    iget-object v2, p0, Lcom/digits/sdk/android/br;->h:Lcom/digits/sdk/android/an;

    iget-object v3, p0, Lcom/digits/sdk/android/br;->n:Lcom/digits/sdk/android/ar;

    iget-object v4, p0, Lcom/digits/sdk/android/br;->e:Lcom/digits/sdk/android/internal/InvertedStateButton;

    iget-object v5, p0, Lcom/digits/sdk/android/br;->k:Lcom/digits/sdk/android/models/AuthConfigResponse;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/digits/sdk/android/br;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Lcom/digits/sdk/android/ar;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/models/AuthConfigResponse;)V

    iget-object v0, p0, Lcom/digits/sdk/android/br;->h:Lcom/digits/sdk/android/an;

    iget-object v1, p0, Lcom/digits/sdk/android/br;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/digits/sdk/android/br;->k:Lcom/digits/sdk/android/models/AuthConfigResponse;

    invoke-virtual {p0, v0, v1, v2}, Lcom/digits/sdk/android/br;->a(Lcom/digits/sdk/android/an;Landroid/widget/TextView;Lcom/digits/sdk/android/models/AuthConfigResponse;)V

    iget-object v0, p0, Lcom/digits/sdk/android/br;->b:Lcom/digits/sdk/android/internal/LinkTextView;

    const-string v1, "phone_number"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/digits/sdk/android/br;->a(Landroid/app/Activity;Lcom/digits/sdk/android/internal/LinkTextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/digits/sdk/android/br;->h:Lcom/digits/sdk/android/an;

    iget-object v1, p0, Lcom/digits/sdk/android/br;->f:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0, v1}, Lcom/digits/sdk/android/br;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/digits/sdk/android/br;->a:Lcom/digits/sdk/android/SpacedEditText;

    invoke-virtual {p0, p1, v0}, Lcom/digits/sdk/android/br;->a(Landroid/app/Activity;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/digits/sdk/android/br;->a:Lcom/digits/sdk/android/SpacedEditText;

    invoke-static {p1, v0}, La/a/a/a/a/b/i;->b(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/widget/EditText;)V
    .locals 2

    const-string v0, "android.permission.RECEIVE_SMS"

    invoke-static {p1, v0}, La/a/a/a/a/b/i;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/digits/sdk/android/cg;

    invoke-direct {v1, p2}, Lcom/digits/sdk/android/cg;-><init>(Landroid/widget/EditText;)V

    iput-object v1, p0, Lcom/digits/sdk/android/br;->i:Lcom/digits/sdk/android/cg;

    iget-object v1, p0, Lcom/digits/sdk/android/br;->i:Lcom/digits/sdk/android/cg;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/EditText;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/digits/sdk/android/ag;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/EditText;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "indicator_input_error"

    const-string v3, "drawable"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/digits/sdk/android/cb$g;->dgts__confirmationEditTextPlaceholder:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setCompoundDrawablePadding(I)V

    iget-object v0, p0, Lcom/digits/sdk/android/br;->m:Lcom/digits/sdk/android/j;

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/TextView;)V
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/br;->k:Lcom/digits/sdk/android/models/AuthConfigResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/br;->k:Lcom/digits/sdk/android/models/AuthConfigResponse;

    iget-boolean v0, v0, Lcom/digits/sdk/android/models/AuthConfigResponse;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/br;->l:Lcom/digits/sdk/android/internal/g;

    sget v1, Lcom/digits/sdk/android/cb$g;->dgts__terms_text_updated:I

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/internal/g;->a(I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/digits/sdk/android/ag;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/TextView;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/digits/sdk/android/br;->l:Lcom/digits/sdk/android/internal/g;

    sget v1, Lcom/digits/sdk/android/cb$g;->dgts__terms_text_sign_in:I

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/internal/g;->a(I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Lcom/digits/sdk/android/ar;Lcom/digits/sdk/android/internal/InvertedStateButton;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/digits/sdk/android/internal/InvertedStateButton;->setEnabled(Z)V

    new-instance v0, Lcom/digits/sdk/android/br$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/digits/sdk/android/br$1;-><init>(Lcom/digits/sdk/android/br;Lcom/digits/sdk/android/ar;Lcom/digits/sdk/android/an;Landroid/app/Activity;Lcom/digits/sdk/android/internal/InvertedStateButton;)V

    invoke-virtual {p4, v0}, Lcom/digits/sdk/android/internal/InvertedStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Lcom/digits/sdk/android/ar;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/models/AuthConfigResponse;)V
    .locals 6

    const/4 v1, 0x0

    iget-boolean v0, p5, Lcom/digits/sdk/android/models/AuthConfigResponse;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p4, v0}, Lcom/digits/sdk/android/internal/InvertedStateButton;->setVisibility(I)V

    invoke-virtual {p4, v1}, Lcom/digits/sdk/android/internal/InvertedStateButton;->setEnabled(Z)V

    new-instance v0, Lcom/digits/sdk/android/br$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/digits/sdk/android/br$2;-><init>(Lcom/digits/sdk/android/br;Lcom/digits/sdk/android/ar;Lcom/digits/sdk/android/an;Landroid/app/Activity;Lcom/digits/sdk/android/internal/InvertedStateButton;)V

    invoke-virtual {p4, v0}, Lcom/digits/sdk/android/internal/InvertedStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Lcom/digits/sdk/android/internal/StateButton;)V
    .locals 3

    sget v0, Lcom/digits/sdk/android/cb$g;->dgts__continue:I

    sget v1, Lcom/digits/sdk/android/cb$g;->dgts__sending:I

    sget v2, Lcom/digits/sdk/android/cb$g;->dgts__done:I

    invoke-virtual {p3, v0, v1, v2}, Lcom/digits/sdk/android/internal/StateButton;->a(III)V

    invoke-virtual {p3}, Lcom/digits/sdk/android/internal/StateButton;->g()V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/digits/sdk/android/internal/StateButton;->setEnabled(Z)V

    invoke-super {p0, p1, p2, p3}, Lcom/digits/sdk/android/ag;->a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Lcom/digits/sdk/android/internal/StateButton;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "receiver"

    aput-object v3, v0, v2

    const-string v3, "phone_number"

    aput-object v3, v0, v1

    const/4 v3, 0x2

    const-string v4, "request_id"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "user_id"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "digits_event_details_builder"

    aput-object v4, v0, v3

    invoke-static {p1, v0}, Lcom/digits/sdk/android/k;->a(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "digits_event_details_builder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    iget-object v3, v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->c:Ljava/lang/Long;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method b(Landroid/os/Bundle;)Lcom/digits/sdk/android/an;
    .locals 17

    new-instance v3, Lcom/digits/sdk/android/bs;

    const-string v2, "receiver"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/digits/sdk/android/br;->c:Lcom/digits/sdk/android/internal/StateButton;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/digits/sdk/android/br;->d:Lcom/digits/sdk/android/internal/InvertedStateButton;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/digits/sdk/android/br;->e:Lcom/digits/sdk/android/internal/InvertedStateButton;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/digits/sdk/android/br;->a:Lcom/digits/sdk/android/SpacedEditText;

    const-string v2, "request_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v2, "phone_number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/digits/sdk/android/br;->n:Lcom/digits/sdk/android/ar;

    const-string v2, "email_enabled"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/digits/sdk/android/br;->g:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/digits/sdk/android/br;->o:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-object/from16 v16, v0

    invoke-direct/range {v3 .. v16}, Lcom/digits/sdk/android/bs;-><init>(Landroid/os/ResultReceiver;Lcom/digits/sdk/android/internal/StateButton;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/SpacedEditText;Ljava/lang/String;JLjava/lang/String;Lcom/digits/sdk/android/ar;Ljava/lang/Boolean;Landroid/widget/TextView;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    return-object v3
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/br;->n:Lcom/digits/sdk/android/ar;

    iget-object v1, p0, Lcom/digits/sdk/android/br;->o:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a()Lcom/digits/sdk/android/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ar;->h(Lcom/digits/sdk/android/a/f;)V

    iget-object v0, p0, Lcom/digits/sdk/android/br;->h:Lcom/digits/sdk/android/an;

    invoke-interface {v0}, Lcom/digits/sdk/android/an;->b()V

    return-void
.end method

.method public c()I
    .locals 1

    sget v0, Lcom/digits/sdk/android/cb$f;->dgts__activity_confirmation:I

    return v0
.end method
