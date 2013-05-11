extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_D4B9A49FBBDA4A95A031BABEB8BD9678(void *, void *);
void MREP_8E8A12A3D56444089FAAF576DCBA9F1D(void *, void *);
void MREP_EF67FB59505147748084895812E66E3B(void *, void *);
void MREP_C7E4B9500F264BBBB7372498605C1539(void *, void *);
void MREP_561076DE39D64CD39100898D07EB92D4(void *, void *);
void MREP_0A68E690CF814ABE8F62D354BCDD7D9E(void *, void *);
void MREP_3D1319F0FF984335A4CE2C845761D2AA(void *, void *);
void MREP_6ACD871CD6DA425EB02BD16FF03C2F04(void *, void *);
void MREP_DE12FA6064444B339A617A68D90924B6(void *, void *);
void MREP_64BE9D7AE4064C1BA54ED728E253CB8F(void *, void *);
void MREP_A5B7C5041C5D4D84814B151D3A2A1ED8(void *, void *);
void MREP_1B1F3583D65441EABF5FB157F2209F54(void *, void *);
}

extern "C"
void
RubyMotionInit(int argc, char **argv)
{
    static bool initialized = false;
    if (!initialized) {
	ruby_init();
	ruby_init_loadpath();
        if (argc > 0) {
	    const char *progname = argv[0];
	    ruby_script(progname);
	}
#if !__LP64__
	try {
#endif
	    void *self = rb_vm_top_self();
MREP_D4B9A49FBBDA4A95A031BABEB8BD9678(self, 0);
MREP_8E8A12A3D56444089FAAF576DCBA9F1D(self, 0);
MREP_EF67FB59505147748084895812E66E3B(self, 0);
MREP_C7E4B9500F264BBBB7372498605C1539(self, 0);
MREP_561076DE39D64CD39100898D07EB92D4(self, 0);
MREP_0A68E690CF814ABE8F62D354BCDD7D9E(self, 0);
MREP_3D1319F0FF984335A4CE2C845761D2AA(self, 0);
MREP_6ACD871CD6DA425EB02BD16FF03C2F04(self, 0);
MREP_DE12FA6064444B339A617A68D90924B6(self, 0);
MREP_64BE9D7AE4064C1BA54ED728E253CB8F(self, 0);
MREP_A5B7C5041C5D4D84814B151D3A2A1ED8(self, 0);
MREP_1B1F3583D65441EABF5FB157F2209F54(self, 0);
#if !__LP64__
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
#endif
	initialized = true;
    }
}
