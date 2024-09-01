package functional_tests_test

import (
	. "github.com/onsi/ginkgo/v2"
	. "github.com/onsi/gomega"
)

var _ = Describe("Functional Test Description", func() {
	Context("WHEN in the context ", func() {
		It("SHOULD match", func() {
			Expect(true).To(BeTrue())
		})
	})

})
